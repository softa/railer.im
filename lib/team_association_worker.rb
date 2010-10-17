class TeamAssociationWorker
  def self.perform
    ActiveRecord::Base.connection.execute %(
      SELECT set_limit(0.6);
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
  end
end
