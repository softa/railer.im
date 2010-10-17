class ReplacedGinForGist < ActiveRecord::Migration
  def self.up
    execute "
    DROP INDEX IF EXISTS users_name_trgm_idx;
    DROP INDEX IF EXISTS users_email_trgm_idx;
    DROP INDEX IF EXISTS users_login_trgm_idx;
    DROP INDEX IF EXISTS rubygems_name_trgm_idx;
    DROP INDEX IF EXISTS rubygems_authors_names_trgm_idx;
    DROP INDEX IF EXISTS rubygems_description_trgm_idx;
    DROP INDEX IF EXISTS teams_name_trgm_idx;
    DROP INDEX IF EXISTS companies_name_trgm_idx;
    "
    execute "
    CREATE INDEX users_name_trgm_idx ON users USING gist (name gist_trgm_ops);
    CREATE INDEX users_email_trgm_idx ON users USING gist (email gist_trgm_ops);
    CREATE INDEX users_login_trgm_idx ON users USING gist (login gist_trgm_ops);
    CREATE INDEX rubygems_name_trgm_idx ON rubygems USING gist (name gist_trgm_ops);
    CREATE INDEX rubygems_authors_names_trgm_idx ON rubygems USING gist (authors_names gist_trgm_ops);
    CREATE INDEX rubygems_description_trgm_idx ON rubygems USING gist (description gist_trgm_ops);
    CREATE INDEX teams_name_trgm_idx ON teams USING gist (name gist_trgm_ops);
    CREATE INDEX companies_name_trgm_idx ON companies USING gist (name gist_trgm_ops);
    "
  end

  def self.down
    execute "
    DROP INDEX users_name_trgm_idx;
    DROP INDEX users_email_trgm_idx;
    DROP INDEX users_login_trgm_idx;
    DROP INDEX rubygems_name_trgm_idx;
    DROP INDEX rubygems_authors_names_trgm_idx;
    DROP INDEX rubygems_description_trgm_idx;
    DROP INDEX teams_name_trgm_idx;
    DROP INDEX companies_name_trgm_idx;
    "
  end
end
