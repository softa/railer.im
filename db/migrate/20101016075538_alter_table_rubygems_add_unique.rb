class AlterTableRubygemsAddUnique < ActiveRecord::Migration
  def self.up
    execute "
    ALTER TABLE rubygems ALTER name SET NOT NULL;
    ALTER TABLE rubygems ALTER description SET NOT NULL;
    ALTER TABLE rubygems ALTER downloads SET NOT NULL;
    ALTER TABLE rubygems ALTER version SET NOT NULL;
    ALTER TABLE rubygems ALTER version_downloads SET NOT NULL;
    ALTER TABLE rubygems ALTER authors SET NOT NULL;
    ALTER TABLE rubygems ALTER project_uri SET NOT NULL;
    ALTER TABLE rubygems ALTER gem_uri SET NOT NULL;
    ALTER TABLE rubygems ADD UNIQUE (name);
    "
  end

  def self.down
    execute "
    ALTER TABLE rubygems DROP CONSTRAINT rubygems_name_key;
    "
  end
end
