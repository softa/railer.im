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
      :authors_names => data['authors'],
      :project_uri => data['project_uri'],
      :gem_uri => data['gem_uri'],
      :source_code_uri => data['source_code_uri'],
      :bug_tracker_uri => data['bug_tracker_uri'],
      :wiki_uri => data['wiki_uri'],
      :mailing_list_uri => data['mailing_list_uri'],
      :documentation_uri => data['documentation_uri']
  end

  def self.perform_initially(rubygem)
    require 'open-uri'

    url = "http://rubygems.org/api/v1/gems/#{rubygem.name}.json"
    #begin
      json = open(url).read
      data = JSON.parse(json)
    #rescue => e
    #  return false
    #end
#    raise data.inspect
    rubygem.description = data['info']
    rubygem.downloads = data['downloads']
    rubygem.version = data['version']
    rubygem.version_downloads = data['version_downloads']
    rubygem.homepage_uri = data['homepage_uri']
    rubygem.authors_names = data['authors']
    rubygem.project_uri = data['project_uri']
    rubygem.gem_uri = data['gem_uri']
    rubygem.source_code_uri = data['source_code_uri']  
    rubygem.bug_tracker_uri = data['bug_tracker_uri']
    rubygem.wiki_uri = data['wiki_uri']
    rubygem.mailing_list_uri = data['mailing_list_uri']
    rubygem.documentation_uri = data['documentation_uri']
  end
end
