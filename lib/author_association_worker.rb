class AuthorAssociationWorker
  @queue = :association
  def self.perform
    ActiveRecord::Base.connection.execute %(
UPDATE authorships
      SET user_id =
      -- when null do not need worry, we have a WHERE user_id IS NULL
        (
          SELECT u.id
          FROM
            rubygems g 
          JOIN users u ON (
            g.source_code_uri ~* ($$http://github\.com/$$ || u.login || $$/.*$$)
            OR g.project_uri ~* ($$http://github\.com/$$ || u.login || $$/.*$$)
            OR g.homepage_uri ~* ($$http://github\.com/$$ || u.login || $$/.*$$)
            OR g.bug_tracker_uri ~* ($$http://github\.com/$$ || u.login || $$/.*$$)
            
            )
          WHERE
              (
              substr(g.source_code_uri,1, 17) = 'http://github.com'
              OR substr(g.project_uri,1, 17) = 'http://github.com'
              OR substr(g.homepage_uri,1, 17) = 'http://github.com'
              OR substr(g.bug_tracker_uri,1, 17) = 'http://github.com'
              )

              AND g.id = authorships.rubygem_id
          ORDER BY greatest(similarity(u.name, authorships.author_name), similarity(u.email, authorships.author_name), similarity(u.login, authorships.author_name)) DESC LIMIT 1
        )
      WHERE user_id IS NULL
      AND NOT EXISTS (
        SELECT 1 
        FROM authorships a 
        WHERE a.user_id = authorships.user_id AND a.author_name = authorships.author_name
      );
    )


    threshold = 0.5
    begin
      ActiveRecord::Base.connection.execute %(
      SELECT set_limit(#{threshold});
      UPDATE authorships 
      SET user_id = (
        SELECT id 
        FROM users u
      WHERE (u.name % authorships.author_name OR u.email % authorships.author_name OR u.login % authorships.author_name)
      AND NOT EXISTS (SELECT 1 FROM authorships a WHERE a.user_id = u.id AND a.rubygem_id = authorships.rubygem_id)
      ORDER BY greatest(similarity(u.name, authorships.author_name), similarity(u.email, authorships.author_name), similarity(u.login, authorships.author_name)) DESC
      LIMIT 1
    )  
      WHERE authorships.user_id IS NULL;
      )
    rescue Exception => e
      threshold += 0.1
      raise "Error while associating teams" if threshold > 1
      retry
    end
  end
end
