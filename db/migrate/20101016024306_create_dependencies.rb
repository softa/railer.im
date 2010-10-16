class CreateDependencies < ActiveRecord::Migration
  def self.up
    create_table :dependencies do |t|
      t.integer :repository_id, :null => false
      t.integer :rubygem_id, :null => false
      t.text :environments, :null => false, :default => 'all'
      t.timestamps
    end
    execute "
    ALTER TABLE dependencies ADD FOREIGN KEY (repository_id) REFERENCES repositories;
    ALTER TABLE dependencies ADD FOREIGN KEY (rubygem_id) REFERENCES rubygems;
    ALTER TABLE dependencies ADD UNIQUE (repository_id, rubygem_id);
    "
  end

  def self.down
    drop_table :dependencies
  end
end
