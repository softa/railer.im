class InserTems < ActiveRecord::Migration
  def self.up
    `psql railerim_#{Rails.env} < #{Rails.root}/db/migrate/teams.sql`
  end

  def self.down
    execute "
    TRUNCATE teams CASCADE;
    "
  end
end
