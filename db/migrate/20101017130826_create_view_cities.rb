class CreateViewCities < ActiveRecord::Migration
  def self.up
    execute %(
    CREATE VIEW cities AS
    SELECT city, country_code, count(*) as total FROM users WHERE country_code is not null AND city is not null GROUP BY 1,2 ORDER BY 3 desc;
    )
  end

  def self.down
    execute %(DROP VIEW cities;)
  end
end
