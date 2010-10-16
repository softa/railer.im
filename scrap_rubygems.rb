#rubygems = Gem::SpecFetcher.fetcher.list.values
#File.open('rubygems.marshall','w'){|f|
#  f.write Marshal.dump(rubygems)
#}
rubygems = Marshal.load(File.read('rubygems.marshall'))
require 'open-uri'

for name,_,_ in rubygems.first
  puts "getting #{name}..."
  g = Rubygem.find_by_name name
  if g
    puts "skipping"
    next
  end
  url = "http://rubygems.org/api/v1/gems/#{name}.json"
  begin
    json = open(url).read
  rescue => e
    puts "BUG #{e}"
    next
  end
  data = JSON.parse(json)
  Rubygem.create :name => data['name'],
    :description => data['info'],
    :downloads => data['downloads'],  
    :version => data['version'],  
    :version_downloads => data['version_downloads'],  
    :homepage_uri => data['homepage_uri'],  
    :authors => data['authors'],  
    :project_uri => data['project_uri'],  
    :gem_uri => data['gem_uri'],  
    :source_code_uri => data['source_code_uri'],  
    :bug_tracker_uri => data['bug_tracker_uri'],  
    :wiki_uri => data['wiki_uri'],  
    :mailing_list_uri => data['mailing_list_uri'],
    :documentation_uri => data['documentation_uri']
  puts "OK"
end