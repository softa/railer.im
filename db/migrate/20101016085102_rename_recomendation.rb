class RenameRecomendation < ActiveRecord::Migration
  def self.up
    execute "
    ALTER TABLE recomendations RENAME TO recommendations;
    ALTER TABLE recommendations RENAME recomends_id TO recommends_id;
    ALTER TABLE recommendations RENAME recomended_id TO recommended_id;
    "
  end

  def self.down
    execute "
    ALTER TABLE recommendations RENAME TO recomendations;
    ALTER TABLE recomendations RENAME recommends_id TO recomends_id;
    ALTER TABLE recomendations RENAME recommended_id TO recomended_id;
    "
  end
end
