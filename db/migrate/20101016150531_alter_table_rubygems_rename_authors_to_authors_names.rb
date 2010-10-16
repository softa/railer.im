class AlterTableRubygemsRenameAuthorsToAuthorsNames < ActiveRecord::Migration
  def self.up
    execute "
    ALTER TABLE rubygems RENAME authors TO authors_names;
    "
  end

  def self.down
    execute "
    ALTER TABLE rubygems RENAME authors_names TO authors;
    "
  end
end
