class Team < ActiveRecord::Base
<<<<<<< HEAD
  label :name, :team_home
  has_many :users
  def url
    "http://railsrumble.com/teams/#{team_home}"
  end
end
=======
  has_many :team_memberships
  has_many :users, :through => :team_memberships
end
>>>>>>> 6da3aa7cb62edcdfd2d80103173f96a73015fee1
