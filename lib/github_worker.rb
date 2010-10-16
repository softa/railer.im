class GithubWorker
  @queue = :important

  def self.perform(user_id)
    user = User.find(user_id)
  end
end