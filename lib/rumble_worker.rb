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
      #members...
    rescue => e
      return
    end
  end

end

<img alt="Screenshot" src="https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287232148/423628/screenshot.png">