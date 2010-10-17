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
          ORDER BY greatest(similarity(u.name, authorships.name), similarity(u.email, authorships.name), similarity(u.login, authorships.name)) DESC LIMIT 1
        )
      WHERE user_id IS NULL
      AND NOT EXISTS (
        SELECT 1 
        FROM authorships a 
        WHERE a.user_id = authorships.user_id AND a.author_name = authorships.author_name
      );
    )
  end
end
