class RecreateViews < ActiveRecord::Migration
  def self.up
    execute "DROP VIEW scores;"
    execute "DROP VIEW recomendation_scores;"
    execute "DROP VIEW initial_scores;"

    execute %(
    CREATE VIEW initial_scores AS
      SELECT
        u.id,
        (SELECT coalesce(sum(watchers - 1 + coalesce(score,0)),0) FROM repositories r WHERE r.user_id = u.id )
        +
        (SELECT count(*) FROM git_followers g WHERE g.followee_id = u.id ) * 5
        +
        (SELECT coalesce(sum(downloads),0) FROM rubygems r JOIN authorships a ON (a.rubygem_id = r.id) WHERE a.user_id = u.id )
        as initial_score
        FROM users u;
    )

    execute %(
    CREATE VIEW recomendation_scores AS
      SELECT
        r.recommended_id as id,
        (SELECT sqrt(initial_score) FROM initial_scores i WHERE i.id = r.recommends_id) as score
        
      FROM recommendations r;
     ) 

     execute %(
     CREATE VIEW scores AS
       SELECT
        i.id,
        i.initial_score + coalesce((SELECT sum(score) FROM recomendation_scores rs WHERE rs.id = i.id),0) as score
        FROM initial_scores i;
      )
  end

  def self.down
  end
end
