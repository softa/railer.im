class CreateTeamMemberships < ActiveRecord::Migration
  def self.up
    create_table :team_memberships do |t|
      t.integer :team_id, :null => false
      t.integer :user_id
      t.text :name, :null => false

      t.timestamps
    end
    execute "
    ALTER TABLE team_memberships ADD UNIQUE (team_id, name);
    ALTER TABLE team_memberships ADD UNIQUE (team_id, user_id);
    ALTER TABLE users DROP team_id;
    ALTER TABLE team_memberships ADD FOREIGN KEY (team_id) REFERENCES teams;
    ALTER TABLE team_memberships ADD FOREIGN KEY (user_id) REFERENCES users;
    "
  end

  def self.down
    drop_table :team_memberships
  end
end
