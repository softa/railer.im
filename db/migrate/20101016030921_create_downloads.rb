class CreateDownloads < ActiveRecord::Migration
  def self.up
    create_table :downloads do |t|
      t.integer :rubygem_id, :null => false
      t.text :version, :null => false
      t.integer :counter, :null => false, :default => 0

      t.timestamps
    end
    execute "
    ALTER TABLE downloads ADD FOREIGN KEY (rubygem_id) REFERENCES rubygems;
    ALTER TABLE downloads ADD UNIQUE (rubygem_id, version, created_at);
    "
  end

  def self.down
    drop_table :downloads
  end
end
