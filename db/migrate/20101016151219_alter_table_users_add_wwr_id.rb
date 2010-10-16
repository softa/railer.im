class AlterTableUsersAddWwrId < ActiveRecord::Migration
  def self.up
    execute "
    ALTER TABLE users ADD wwr_id int;
    "
  end

  def self.down
    execute "
    ALTER TABLE users DROP wwr_id int;
    "
  end
end
