class AddDocumentationUriToRubygems < ActiveRecord::Migration
  def self.up
    add_column :rubygems, :documentation_uri, :text
  end

  def self.down
    remove_column :rubygems, :documentation_uri
  end
end
