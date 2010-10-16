class RubygemWorker
  @queue = :normal

  def self.perform(rubygem_id)
    rubygem = Rubygem.find rubygem_id
    require 'open-uri'
    url = "http://rubygems.org/api/v1/gems/#{rubygem.name}.json"
    begin
      json = open(url).read
    rescue => e
      return
    end
    data = JSON.parse(json)
    rubygem.update_attributes :description => data['info'],
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
  end
end