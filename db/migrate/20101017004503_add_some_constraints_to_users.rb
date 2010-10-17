class AddSomeConstraintsToUsers < ActiveRecord::Migration
  def self.up
    execute "
    DELETE FROM repositories WHERE EXISTS (SELECT 1 FROM users u WHERE u.id = repositories.user_id AND (u.email IS NULL OR u.login IS NULL));
    ALTER TABLE users ALTER login SET NOT NULL;
    ALTER TABLE users ALTER email SET NOT NULL;
    "
  end

  def self.down
    execute "
    ALTER TABLE users ALTER login DROP NOT NULL;
    ALTER TABLE users ALTER email DROP NOT NULL;
    "
  end
end
