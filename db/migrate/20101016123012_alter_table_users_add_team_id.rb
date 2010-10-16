class AlterTableUsersAddTeamId < ActiveRecord::Migration
  def self.up
    execute "ALTER TABLE users ADD team_id integer REFERENCES teams;"
  end

  def self.down
    execute "ALTER TABLE users DROP team_id;"
  end
end
