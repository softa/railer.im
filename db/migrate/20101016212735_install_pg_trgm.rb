class InstallPgTrgm < ActiveRecord::Migration
  def self.up
    `psql railerim_#{Rails.env} < #{Rails.root}/db/migrate/pg_trgm.sql`
  end

  def self.down
    `psql railerim_#{Rails.env} < #{Rails.root}/db/migrate/uninstall_pg_trgm.sql`
  end
end
