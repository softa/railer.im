class AddAnotherNotNull < ActiveRecord::Migration
  def self.up
    execute "
    UPDATE users SET name = 'Wasnulio' where name is null;
    ALTER TABLE users ALTER name SET NOT NULL;
    "
  end

  def self.down
    execute "
    ALTER TABLE users ALTER name DROP NOT NULL;
    "
  end
end
