class AddGeoDataToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :accuracy, :integer
    add_column :users, :city, :text
    add_column :users, :province, :text
    add_column :users, :street_address, :text
    add_column :users, :lat, :float
    add_column :users, :lng, :float
    add_column :users, :country_code, :text
    add_column :users, :precision, :text
    add_column :users, :state, :text
    add_column :users, :full_address, :text
    add_column :users, :zip, :text
  end

  def self.down
    remove_column :users, :zip
    remove_column :users, :full_address
    remove_column :users, :state
    remove_column :users, :precision
    remove_column :users, :country_code
    remove_column :users, :lng
    remove_column :users, :lat
    remove_column :users, :street_address
    remove_column :users, :province
    remove_column :users, :city
    remove_column :users, :accuracy
  end
end
