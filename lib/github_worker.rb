class GithubWorker
  @queue = :important

  def self.perform(user_id)
    u = User.find(user_id)
    user = Octopi::User.find u.login
    company = Company.find_or_create_by_name user.company
    location = Geokit::Geocoders::YahooGeocoder.geocode user.location
    u.update_attributes :name => user.name,
      :email => user.email,
      :company_name => user.company,
      :company_id => company.id,
      :public_repo_count => user.public_repo_count,
      :blog => user.blog,
      :github_id => user.id,
      :public_gist_count => user.public_gist_count,
      :gravatar_id => user.gravatar_id,
      :location => user.location,
      :login => user.login,
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
        more = Octopi::Repository.find_all(repo.name).detect{|r| r.username == u.login }
        u.repositories.create :name => repo.name,
          :description => repo.description,
          :forks => repo.forks,
          :homepage => repo.homepage,
          :open_issues => repo.open_issues,
          :owner => repo.owner,
          :url => repo.url,
          :watchers => repo.watchers,
          :fork => repo.fork,
          :originaly_created_at => more.created,
          :pushed_at => more.pushed,
          :score => more.score,
          :language => more.language,
          :repo_id => more.id,
          :size => more.size
        sleep 1.1 unless Rails.env == :test
      end
      #for follower in user.followers #TODO a
      #end
      #for follower in user.followings #TODO b
      #end
  end
end