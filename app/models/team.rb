class Team < ActiveRecord::Base

  label :name, :team_home
  has_many :team_memberships
  has_many :users, :through => :team_memberships

  def url
    "http://railsrumble.com/teams/#{team_home}"
  end

  serialize :where
  serialize :how

  def to_param
    team_home
  end
  
end