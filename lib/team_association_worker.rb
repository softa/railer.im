class TeamAssociationWorker
  @queue = :association
  def self.perform
    threshold = 0.8
    begin
    ActiveRecord::Base.connection.execute %(
      SELECT set_limit(#{threshold});
      UPDATE team_memberships 
      SET user_id = (
        SELECT id 
        FROM users u
      WHERE (u.name % team_memberships.name OR u.email % team_memberships.name OR u.login % team_memberships.name)
      AND NOT EXISTS (SELECT 1 FROM team_memberships tm WHERE tm.user_id = u.id)
      ORDER BY greatest(similarity(u.name, team_memberships.name), similarity(u.email, team_memberships.name), similarity(u.login, team_memberships.name)) DESC
      LIMIT 1
    )  
      WHERE user_id IS NULL;
    )
    rescue Exception => e
      threshold += 0.1
      raise "Error while associating teams" if threshold > 1
      retry
    end
  end
end
