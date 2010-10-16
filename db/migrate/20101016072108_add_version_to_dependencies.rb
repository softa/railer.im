class AddVersionToDependencies < ActiveRecord::Migration
  def self.up
    add_column :dependencies, :version, :text
  end

  def self.down
    remove_column :dependencies, :version
  end
end
