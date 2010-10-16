class CreateRubygems < ActiveRecord::Migration
  def self.up
    create_table :rubygems do |t|
      t.text :name
      t.text :description
      t.integer :downloads
      t.text :version
      t.integer :version_downloads
      t.text :homepage_uri
      t.text :authors
      t.text :project_uri
      t.text :gem_uri
      t.text :source_code_uri
      t.text :bug_tracker_uri
      t.text :wiki_uri
      t.text :mailing_list_uri

      t.timestamps
    end
  end

  def self.down
    drop_table :rubygems
  end
end
