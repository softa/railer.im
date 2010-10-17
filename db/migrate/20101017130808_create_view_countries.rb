class CreateViewCountries < ActiveRecord::Migration
  def self.up
    execute %(
    CREATE VIEW countries AS
    SELECT country_code, count(*) as total FROM users WHERE country_code is not null GROUP BY 1 ORDER BY 2 desc;
    )
  end

  def self.down
    execute %(DROP VIEW countries;)
  end
end
