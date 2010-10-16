class AlterTableUserDropColumnFollowersCount < ActiveRecord::Migration
  def self.up
    execute "
    ALTER TABLE users DROP followers_count;
    "
  end

  def self.down
    execute "
    ALTER TABLE users ADD followers_count integer;
    "
  end
end
