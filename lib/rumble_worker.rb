# http://railsrumble.com/teams/indiana-coders
# http://railsrumble.com/teams/infinity-pool-boom-boom
class RumbleWorker
  @queue = :normal

  def self.perform(team_id)
    team = Team.find team_id
    require 'open-uri'

    begin
      doc = Hpricot(open(team.url).read)
      members = (doc/'.team-member').map(&:inner_text).map(&:strip)
      thumbnail,image = (doc/'#entry-screenshot img').map{|img| img[:src] }
      what = (doc%'.description p').inner_html
      where = Hash[(doc/'#team-entry dl').map{|dl|
        [(dl%'dt').inner_html, (dl%'dd a').inner_html]
      }]
      how = (doc/'.resources-used p').text.split(/\n/)
      team.update_attributes :thumbnail => thumbnail, :image => image, :what => what, :where => where, :how => how
      members.each{|member|
        team.team_memberships.find_or_create_by_name member
      }
    rescue => e
      return
    end
  end

  def self.perform_all
    Team.all.each{|team|
      puts team.name
      perform(team.id)
    }
  end
end