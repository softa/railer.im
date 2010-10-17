class AddUniqueToRepository < ActiveRecord::Migration
  def self.up
    execute "
    ALTER TABLE repositories ADD UNIQUE (user_id, name);
    "
  end

  def self.down
    execute "
    ALTER TABLE repositories DROP CONSTRAINT repositories_user_id_name_key;
    "
  end
end
