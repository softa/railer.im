class AddScoreAndLevelToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :score, :integer
    add_column :users, :level, :integer
  end

  def self.down
    remove_column :users, :level
    remove_column :users, :score
  end
end
