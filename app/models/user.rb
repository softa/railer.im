class User < ActiveRecord::Base

  acts_as_authentic
  belongs_to :company
  has_one :team_membership
  has_one :team, :through => :team_membership
  # Recommendation
  has_many :recommendations_made, :class_name => 'Recommendation', :foreign_key => 'recommends_id'
  has_many :recommendations_received, :class_name => 'Recommendation', :foreign_key => 'recommended_id'
  has_many :recommends, :class_name => 'User', :through => :recommendations_made
  has_many :recommended_by, :class_name => 'User', :through => :recommendations_received
  # GitFollower
  has_many :git_followers, :class_name => 'GitFollower', :foreign_key => 'followee_id'
  has_many :git_followees, :class_name => 'GitFollower', :foreign_key => 'follower_id'
  has_many :followees, :class_name => 'User', :through => :git_followees
  has_many :followers, :class_name => 'User', :through => :git_followers

  has_many :repositories

  has_one :twitter_profile

  has_many :authorships
  has_many :owned_gems, :class_name => 'Rubygem', :through => :authorships, :source => :rubygem

  label :name, :login

  scope :recent, order('id desc')
  scope :six, limit(6)
  scope :by_vip, order('score desc')
  scope :who_use, (lambda do |g| 
    select("DISTINCT users.*").joins("JOIN repositories ON repositories.user_id = users.id JOIN dependencies ON dependencies.repository_id = repositories.id JOIN rubygems ON dependencies.rubygem_id = rubygems.id ").where("rubygems.id = ?", g.id)
  end)

  # default similarity threshold (pg_trgm)
  @@threshold = nil

  scope :by_similarity, (lambda do |query|
    where("(name % ? OR email % ? OR login % ?)", query, query, query).order("greatest(similarity(name, quote_literal('#{query}')), similarity(email, quote_literal('#{query}')), similarity(login, quote_literal('#{query}'))) DESC")
  end)

  scope :rank_by_similarity, (lambda do |query|
    by_similarity(query).select("'user' AS entry_type, login AS key, greatest(similarity(name, quote_literal('#{query}')), similarity(email, quote_literal('#{query}')), similarity(login, quote_literal('#{query}'))) AS rank")
  end)
  
  def self.similarity_threshold
    @@threshold
  end

  def self.set_similarity_threshold threshold
    return nil unless threshold.instance_of?(Fixnum) or threshold.instance_of?(Float)
    @@threshold = threshold
    connection.execute("SELECT set_limit('#{@@threshold}');")
  end

  def used_gems
    Rubygem.used_by(self).all
  end

  def token_link
    "http://railer.im/user_sessions/token_auth?token=#{perishable_token}"
  end

  def wwr_url
    "http://workingwithrails.com/person/#{wwr_id}"
  end

  def wwr_recommendations_for_url
   "http://workingwithrails.com/recommendation/for/person/#{wwr_id}"
  end

  def recommend(recommended_user)
    recommendations_made.create(:recommended_id => recommended_user.id)
  end

  def unrecommend(unrecommended_user)
    recommendations_made.find_by_recommended_id(unrecommended_user.id).destroy
  end

  def is_followed_by login
    follower = User.find_by_login(login)
    return nil if follower.nil?
    git_followers.create(:follower_id => follower.id)
  end

  def follows login
    followee = User.find_by_login(login)
    return nil if followee.nil?
    git_followees.create(:followee_id => followee.id)
  end
  
  def to_param; login; end
  
  
  def activate!
    self.active = true
    save
  end

  after_create :send_activation_email
  def send_activation_email
    UserMailer.confirm_email(self).deliver
  end

  def send_reset_email
    UserMailer.reset_email(self).deliver
  end

protected

  before_validation :setup_user, :on => :create
  after_create :work


  def setup_user
    u = User.find self.login rescue nil
    if u
      if u.active?
        errors.add_to_base 'Account has already been taken. Please contact us if you have any question.'
      else
        errors.add_to_base "Account has already been taken. If you are #{u.name||u.login}, <a href='/users/resend_activation_email?id=#{u.id}'>click here</a> to resend the activation email."
      end
    end
    self.password_confirmation = self.password = Forgery::Basic.password(:allow_special => true, :at_least => 15, :at_most => 16)
    attemps = 0
    begin
      user = Octopi::User.find self.login
    rescue Octopi::NotFound => e
      errors.add_to_base 'User not found. This user has to exists on GitHub.'
      return false
    rescue APICache::TimeoutError => e
      # if theres any error in github api, we'll retry 3 times.
      attemps += 1
      sleep 5
      if attemps < 3
        retry
      else
        errors.add_to_base 'User not found. This user has to exists on GitHub.'
        return false
      end
    rescue APICache::CannotFetch => e
      # if theres any error in github api, we'll retry 3 times.
      attemps += 1
      sleep 5
      if attemps < 3
        retry
      else
        errors.add_to_base 'User not found. This user has to exists on GitHub.'
        return false
      end
    rescue Octopi::APIError => e
      # if theres any error in github api, we'll retry 3 times.
      attemps += 1
      sleep 5
      if attemps < 3
        retry
      else
        errors.add_to_base 'User not found. This user has to exists on GitHub.'
        return false
      end
    end
#    if user.type == 'Organization'
#      errors.add_to_base 'This is an organization account. Railer.Im only accepts users. Sorry.'
#      return false
#    end
    unless user.email
      errors.add_to_base "Your GitHub account doesn't have a public email. Publish your email and come back."
      return false
    end
    self.email = user.email
    self.name = user.name
    self.company_name = user.company
    self.blog = user.blog
    self.github_id = user.id
    self.gravatar_id = user.gravatar_id
    self.location = user.location
  end

  def work
    Resque.enqueue(GithubWorker, self.id)
  end
    
end