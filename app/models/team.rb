class Team < ActiveRecord::Base
  label :name, :team_home
  has_many :users
  def url
    "http://railsrumble.com/teams/#{team_home}"
  end
end