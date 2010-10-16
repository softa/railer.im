class CreateRepositories < ActiveRecord::Migration
  def self.up
    create_table :repositories do |t|
      t.integer :user_id, :null => false
      t.text :name, :null => false
      t.datetime :originaly_created_at, :null => false
      t.integer :forks, :null => false, :default => 0
      t.boolean :has_downloads, :null=> false, :default => false
      t.integer :open_issues, :null => false, :default => 0
      t.datetime :pushed_at, :null => false 
      t.integer :watchers, :null => false, :default => 0
      t.boolean :fork, :null => false, :default => false
      t.float :score, :null => false, :default => 0 
      t.integer :size, :null => false, :default => 0
      t.integer :repo_id
      t.text :description
      t.text :owner
      t.text :language
      t.text :homepage
      t.text :url
      t.text :original_user
      t.timestamps
    end
    execute "
    ALTER TABLE repositories ADD FOREIGN KEY (user_id) REFERENCES users;
    ALTER TABLE repositories ALTER originaly_created_at SET DEFAULT current_timestamp;
    ALTER TABLE repositories ALTER pushed_at SET DEFAULT current_timestamp;
    
    "
  end

  def self.down
    drop_table :repositories
  end
end
