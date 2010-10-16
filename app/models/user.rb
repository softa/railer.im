class User < ActiveRecord::Base
  label :name, :login
  belongs_to :company
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

  acts_as_authentic
  
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
  def setup_user
    #TODO criar um temporarypass irado
    self.password_confirmation = self.password = 'temporarypass'
    user = Octopi::User.find self.login
    self.email = user.email
    self.name = user.name
    self.company_name = user.company
    self.blog = user.blog
    self.github_id = user.id
    self.gravatar_id = user.gravatar_id
    self.location = user.location
  end

  def work
    #TODO disparar o worker aqui
  end
end

