class AlterTableUsersRemoveCompanyNotNull < ActiveRecord::Migration
  def self.up
    execute "
    ALTER TABLE users ALTER company_id DROP NOT NULL;
    "
  end

  def self.down
  end
end
