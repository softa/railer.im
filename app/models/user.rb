class User < ActiveRecord::Base

  acts_as_authentic
  belongs_to :company
  has_one :team_membership
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
  
  def used_gems
    Rubygem.used_by(self).all
  end
  def wwr_url
    "http://workingwithrails.com/person/#{wwr_id}"
  end
  def recommend(recommended_user)
    recommendations_made.create(:recommended_id => recommended_user.id)
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
protected

  before_validation :setup_user, :on => :create
  after_create :work
  after_create :confirm_email

  def setup_user
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
  
  def confirm_email
    UserMailer.confirm_email self
  end
end



