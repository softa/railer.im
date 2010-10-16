class AddRailspluginColsToRubygems < ActiveRecord::Migration
  def self.up
    add_column :rubygems, :indicators, :text
    add_column :rubygems, :indicators_version, :text
    add_column :rubygems, :railsplugins_id, :integer
  end

  def self.down
    remove_column :rubygems, :railsplugins_id
    remove_column :rubygems, :indicators_version
    remove_column :rubygems, :indicators
  end
end
