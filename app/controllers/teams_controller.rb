class TeamsController < InheritedResources::Base
  actions :show,:index
  def index
    @title = " · Rails Rumble Teams"
    index!
  end
  def show
    show!{ @title = " · #{@team.name} · Rails Rumble Team" }
  end
protected
  before_filter :set_near_teams
  def set_near_teams

    @near_teams = Team.limit(12).order('random()').where("thumbnail <> ''")
  end
end
