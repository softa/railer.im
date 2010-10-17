class CreateViewLevels < ActiveRecord::Migration
  def self.up
    execute %(
    CREATE VIEW levels AS
    SELECT level, count(*) as total FROM users GROUP BY 1 ORDER BY 1 desc;
    )
  end

  def self.down
    execute %(DROP VIEW levels;)
  end
end
