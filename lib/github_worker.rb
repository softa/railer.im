class GithubWorker
  @queue = :important

  def self.perform(user_id)
    u = User.find(user_id)
    user = Octopi::User.find u.github
    company = Company.find_or_create_by_name user.company
    u.update_attributes :name => user.name,
      :email => user.email,
      :company_name => user.company,
      :company => company,
      :public_repo_count => user.public_repo_count,
      :blog => user.blog,
      :github_id => user.id,
      :followers_count => user.followers_count,
      :public_gist_count => user.public_gist_count,
      :gravatar_id => user.gravatar_id,
      :location => user.location,
      :login => user.login

      for repo in user.repositories
        more = Octopi::Repository.find_all(repo.name).first
        u.repos.create :name => repo.name,
          :description => repo.description,
          :forks => repo.forks,
          :homepage => repo.homepage,
          :open_issues => repo.open_issues,
          :owner => repo.owner,
          :url => repo.url,
          :watchers => repo.watchers,
          :fork => repo.fork,
          :score => more.score,
          :language => more.language,
          :original_id => more.id,
          :size => more.size
        sleep 1.1
      end
      for follower in user.followers #TODO a
      end
      for follower in user.followings #TODO b
      end
  end
end