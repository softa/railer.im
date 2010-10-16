class CreateCompanies < ActiveRecord::Migration
  def self.up
    create_table :companies do |t|
      t.text :name, :null => false

      t.timestamps
    end
    execute "
    ALTER TABLE companies ADD UNIQUE (name);
    "
  end

  def self.down
    drop_table :companies
  end
end
