require 'open-uri'
require 'gemfile_eval'

class GemfileWorker
  @queue = :normal

  def self.perform(repo_id)
    r = Repository.find(repo_id)
    url = "#{r.url}/raw/master/Gemfile"
    begin
      result = GemfileEval.eval(open(url).read)
    rescue SyntaxError => e
      return
    rescue => e
      return
    end

    for name,version,environments in result.gems
      rubygem = Rubygem.find_or_create_by_name name
      r.dependencies.create :version => version, :environments => environments, :rubygem => rubygem rescue nil
    end
  end
end