class AlterTableUserAddCompanyId < ActiveRecord::Migration
  def self.up
    execute "
    TRUNCATE users CASCADE;
    ALTER TABLE users ADD company_id integer NOT NULL REFERENCES companies;
    "
  end

  def self.down
    execute "
    ALTER TABLE users DROP company_id;
    "
  end
end
