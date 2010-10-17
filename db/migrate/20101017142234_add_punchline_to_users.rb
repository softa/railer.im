class AddPunchlineToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :punchline, :text
  end

  def self.down
    remove_column :users, :punchline
  end
end
