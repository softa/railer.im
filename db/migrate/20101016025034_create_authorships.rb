class CreateAuthorships < ActiveRecord::Migration
  def self.up
    create_table :authorships do |t|
      t.integer :rubygem_id, :null => false
      t.integer :user_id
      t.text :author_name, :null => false

      t.timestamps
    end
    execute "
    ALTER TABLE authorships ADD FOREIGN KEY (rubygem_id) REFERENCES rubygems;
    ALTER TABLE authorships ADD FOREIGN KEY (user_id) REFERENCES users;
    ALTER TABLE authorships ADD UNIQUE (rubygem_id, author_name);
    "
  end

  def self.down
    drop_table :authorships
  end
end
