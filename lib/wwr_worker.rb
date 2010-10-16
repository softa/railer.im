class WwrWorker
  @queue = :normal

  def self.perform(user_id)
    user = User.find user_id
    return unless user.wwr_id
    require 'open-uri'
    begin
      doc = Hpricot(open(user.wwr_recommendations_for_url).read)
    rescue => e
      return
    end
  end
end