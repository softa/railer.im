class TwitterFollower < ActiveRecord::Base
  belongs_to :followee, :class_name => 'TwitterProfile', :foreign_key => :followee_id
  belongs_to :follower, :class_name => 'TwitterProfile', :foreign_key => :follower_id
end