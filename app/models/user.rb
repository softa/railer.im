class User < ActiveRecord::Base
  label :name, :login
  belongs_to :company
  # Recomendation
  has_many :recomendations_made, :class_name => 'Recomendation', :foreign_key => 'recomends_id'
  has_many :recomendations_received, :class_name => 'Recomendation', :foreign_key => 'recomended_id'
  has_many :recomends, :class_name => 'User', :through => :recomendations_made
  has_many :recomended_by, :class_name => 'User', :through => :recomendations_received

  # GitFollower
  has_many :git_followers, :class_name => 'GitFollower', :foreign_key => 'followee_id'
  has_many :git_followees, :class_name => 'GitFollower', :foreign_key => 'follower_id'
  has_many :followees, :class_name => 'User', :through => :git_followees
  has_many :followers, :class_name => 'User', :through => :git_followers

  has_many :repositories


  has_one :twitter_profile

  acts_as_authentic
  
  def recomend(recomended_user)
    recomendations_made.create(:recomended_id => recomended_user.id)
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
protected
  before_validation :set_password_confirmation
  def set_password_confirmation
    self.password_confirmation = self.password
  end

end

