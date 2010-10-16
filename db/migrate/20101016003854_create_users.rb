class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.text :name
      t.text :email
      t.text :company
      t.integer :public_repo_count
      t.text :blog
      t.text :github_id
      t.integer :followers_count
      t.integer :public_gist_count
      t.text :gravatar_id
      t.text :location
      t.text :login
      t.text :crypted_password
      t.text :password_salt
      t.text :persistence_token
      t.text :single_access_token
      t.text :perishable_token
      t.integer :login_count
      t.integer :failed_login_count
      t.datetime :last_request_at
      t.datetime :current_login_at
      t.datetime :last_login_at
      t.text :current_login_ip
      t.text :last_login_ip

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
