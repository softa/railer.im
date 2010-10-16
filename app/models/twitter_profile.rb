class TwitterProfile < ActiveRecord::Base
  # TwitterFollower
  has_many :twitter_followers, :class_name => 'TwitterFollower', :foreign_key => 'followee_id'
  has_many :twitter_followees, :class_name => 'TwitterFollower', :foreign_key => 'follower_id'
  has_many :followees, :class_name => 'User', :through => :twitter_followees
  has_many :followers, :class_name => 'User', :through => :twitter_followers
end
