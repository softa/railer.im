class CreateTwitterFollowers < ActiveRecord::Migration
  def self.up
    create_table :twitter_followers do |t|
      t.integer :follower_id, :null => false
      t.integer :followee_id, :null => false

      t.timestamps
    end
    execute "
    ALTER TABLE twitter_followers ADD FOREIGN KEY (follower_id) REFERENCES twitter_profiles;
    ALTER TABLE twitter_followers ADD FOREIGN KEY (followee_id) REFERENCES twitter_profiles;
    ALTER TABLE twitter_followers ADD UNIQUE (follower_id, followee_id);
    "
  end

  def self.down
    drop_table :twitter_followers
  end
end
