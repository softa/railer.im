class TeamMembership < ActiveRecord::Base
  belongs_to :team
  belongs_to :user

  scope :unbound, where("user_id IS NULL")
end
