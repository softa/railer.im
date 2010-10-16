class AlterTableTemsAddImage < ActiveRecord::Migration
  def self.up
    execute "
    ALTER TABLE teams ADD thumbnail text;
    ALTER TABLE teams ADD image text;
    "
  end

  def self.down
    execute "
    ALTER TABLE teams DROP image;
    ALTER TABLE teams DROP thumbnail;
    "
  end
end
