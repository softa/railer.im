class AlterTableUsersLevelNotNullDefault0 < ActiveRecord::Migration
  def self.up
    execute "
    UPDATE users SET level = 0 WHERE level IS NULL;
    ALTER TABLE users ALTER level SET NOT NULL;
    ALTER TABLE users ALTER level SET DEFAULT 0;
    "
  end

  def self.down
    execute "
    ALTER TABLE users ALTER level DROP NOT NULL;
    ALTER TABLE users ALTER level DROP DEFAULT;
    "
  end
end
