class CreateLocationsView < ActiveRecord::Migration
  def self.up
    execute %(
    CREATE VIEW locations AS
    SELECT to_char(lat, '999D999') as lat, to_char(lng, '999D999') as lng, count(*) as total FROM users GROUP BY 1,2 ORDER BY 3 desc;
    )
  end

  def self.down;
    execute "DROP VIEW locations;"
  end
end
