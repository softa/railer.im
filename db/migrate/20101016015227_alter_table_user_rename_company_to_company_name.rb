class AlterTableUserRenameCompanyToCompanyName < ActiveRecord::Migration
  def self.up
    execute "ALTER TABLE users RENAME company TO company_name;"
  end

  def self.down
    execute "ALTER TABLE users RENAME company_name TO company;"
  end
end
