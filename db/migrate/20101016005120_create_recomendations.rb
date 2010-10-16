class CreateRecomendations < ActiveRecord::Migration
  def self.up
    create_table :recomendations do |t|
      t.integer :recomends_id, :null => false
      t.integer :recomended_id, :null => false

      t.timestamps
    end
    execute "
    ALTER TABLE recomendations ADD FOREIGN KEY (recomends_id) REFERENCES users;
    ALTER TABLE recomendations ADD FOREIGN KEY (recomended_id) REFERENCES users;
    "
  end

  def self.down
    drop_table :recomendations
  end
end
