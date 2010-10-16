require 'open-uri'
require 'hpricot'
for i in 1..9
 url = "http://railsrumble.com/teams?page=#{i}"
 doc = Hpricot(open(url).read)
 teams = (doc/'.team-listing').map do |t|
   {
     :name => (t%'h3 span a').inner_text,
     :team_home => (t%'h3 span a')[:href].split(/\//).last
   }
 end
 teams.each{|team| Team.create! team }
end

##--

#for t in Team.all
#  t.update_attribute :team_home, t.team_home.split(/\//).last
#end