class GithubWorker
  @queue = :important

  def self.perform(user_id)
    u = User.find(user_id)
    user = Octopi::User.find u.login
    company = Company.find_or_create_by_name(user.company) unless u.company_id
    location = Geokit::Geocoders::YahooGeocoder.geocode user.location
    u.update_attributes :name => u.name || user.name,
      :email => u.email || user.email,
      :company_name => user.company,
      :company_id => u.company_id || company.id,
      :public_repo_count => user.public_repo_count,
      :blog => u.blog || user.blog,
      :github_id => user.id,
      :public_gist_count => user.public_gist_count,
      :gravatar_id => user.gravatar_id,
      :location => u.location || user.location,
      # :login => user.login,
      :accuracy => location.accuracy,
      :city => location.city,
      :province => location.province,
      :street_address => location.street_address,
      :lat => location.lat,
      :lng => location.lng,
      :country_code => location.country_code,
      :precision => location.precision,
      :state => location.state,
      :full_address => location.full_address,
      :zip => location.zip      

      for repo in user.repositories
        more = nil
        i = 0
        while(more.nil? && i < 10) 
          i += 1
          begin
            j = JSON.parse(open("http://github.com/api/v2/json/repos/search/#{repo.name}").read)
            more = j["repositories"].detect{|r| r["username"] == u.login} || j["repositories"].first
            puts "http://github.com/api/v2/json/repos/search/#{repo.name}"
            puts more.inspect
          rescue => e
            puts e.inspect
            sleep 5
          end
        end
        u.repositories.create :name => repo.name,
          :description => repo.description,
          :forks => repo.forks,
          :homepage => repo.homepage,
          :open_issues => repo.open_issues,
          :owner => repo.owner,
          :url => repo.url,
          :watchers => repo.watchers,
          :fork => repo.fork,
          :originaly_created_at => more["created"],
          :pushed_at => more["pushed"],
          :score => more["score"],
          :language => more["language"],
          :repo_id => more["id"],
          :size => more["size"]
        sleep 1.1 unless Rails.env == :test
      end
      for follower in user.followers
        u.is_followed_by follower
      end
      for follower in user.following
        u.follows follower        
      end
  end
end