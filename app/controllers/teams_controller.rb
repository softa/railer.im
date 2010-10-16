class TeamsController < InheritedResources::Base
  actions :show
protected
  before_filter :set_near_teams
  def set_near_teams
    @near_teams = Team.limit(5).order('random()')
  end
end
