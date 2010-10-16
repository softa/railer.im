class CreateTwitterProfiles < ActiveRecord::Migration
  def self.up
    create_table :twitter_profiles do |t|
      t.integer :user_id, :null => false
      t.text :twitter_user, :null => false
      t.text :bio
      t.text :link

      t.timestamps
    end
    execute "
    ALTER TABLE twitter_profiles ADD FOREIGN KEY(user_id) REFERENCES users;
    ALTER TABLE twitter_profiles ADD UNIQUE (user_id);
    ALTER TABLE twitter_profiles ADD UNIQUE (twitter_user);
    "
  end

  def self.down
    drop_table :twitter_profiles
  end
end
