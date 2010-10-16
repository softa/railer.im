class InsertGems < ActiveRecord::Migration
  def self.up
    execute "
    TRUNCATE rubygems CASCADE;
    "
    `psql railerim_#{Rails.env} < #{Rails.root}/db/migrate/rubygems.sql`
  end

  def self.down
    execute "
    TRUNCATE rubygems CASCADE;
    "
  end
end
