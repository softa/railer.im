class CreateGitFollowers < ActiveRecord::Migration
  def self.up
    create_table :git_followers do |t|
      t.integer :follower_id, :null => false
      t.integer :followee_id, :null => false

      t.timestamps
    end
    execute "
    ALTER TABLE git_followers ADD FOREIGN KEY (follower_id) REFERENCES users;
    ALTER TABLE git_followers ADD FOREIGN KEY (followee_id) REFERENCES users;
    ALTER TABLE git_followers ADD UNIQUE (follower_id, followee_id);
    "
  end

  def self.down
    drop_table :git_followers
  end
end
