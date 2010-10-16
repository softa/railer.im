class Authorship < ActiveRecord::Base
  belongs_to :author, :class_name => 'User', :foreign_key => :user_id
  belongs_to :rubygem

  scope :unbound, where("user_id IS NULL")
end
