class CreateTeams < ActiveRecord::Migration
  def self.up
    create_table :teams do |t|
      t.text :name, :null => false
      t.text :team_home, :null => false
      t.text :what
      t.text :where
      t.text :how

      t.timestamps
    end
    execute "
    ALTER TABLE teams ADD UNIQUE (name);
    ALTER TABLE teams ADD UNIQUE (team_home);
    "
  end

  def self.down
    drop_table :teams
  end
end
