class AlterTableRecomendationsAddUnique < ActiveRecord::Migration
  def self.up
    execute "
    ALTER TABLE recomendations ADD UNIQUE (recomends_id, recomended_id);
    "
  end

  def self.down
    execute "
    ALTER TABLE recomendations DROP CONSTRAINT recomendations_recomends_id_recomended_id_key;
    "
  end
end
