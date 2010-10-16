class AlterTableRepositoriesChangeRepoIdType < ActiveRecord::Migration
  def self.up
    execute "
    ALTER TABLE repositories ALTER repo_id TYPE text;
    "
  end

  def self.down
  end
end
