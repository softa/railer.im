class TwitterProfile < ActiveRecord::Base
  belongs_to :user
  # TwitterFollower
  has_many :twitter_followers, :class_name => 'TwitterFollower', :foreign_key => 'followee_id'
  has_many :twitter_followees, :class_name => 'TwitterFollower', :foreign_key => 'follower_id'
  has_many :followees, :class_name => 'TwitterProfile', :through => :twitter_followees
  has_many :followers, :class_name => 'TwitterProfile', :through => :twitter_followers

  def is_followed_by twitter_user
    follower = TwitterProfile.find_by_twitter_user(twitter_user)
    return nil if follower.nil?
    twitter_followers.create(:follower_id => follower.id)
  end

  def follows twitter_user
    followee = TwitterProfile.find_by_twitter_user(twitter_user)
    return nil if followee.nil?
    twitter_followees.create(:followee_id => followee.id)
  end
end
