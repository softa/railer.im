class TeamsController < InheritedResources::Base
  actions :show,:index
protected
  before_filter :set_near_teams
  def set_near_teams
    @near_teams = Team.limit(12).order('random()').where("thumbnail <> ''")
  end
end
