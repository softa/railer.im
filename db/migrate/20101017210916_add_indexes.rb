class AddIndexes < ActiveRecord::Migration
  def self.up
    execute "
    CREATE INDEX users_name_trgm_idx ON users USING gin (name gin_trgm_ops);
    CREATE INDEX users_email_trgm_idx ON users USING gin (email gin_trgm_ops);
    CREATE INDEX users_login_trgm_idx ON users USING gin (login gin_trgm_ops);
    CREATE INDEX rubygems_name_trgm_idx ON rubygems USING gin (name gin_trgm_ops);
    CREATE INDEX rubygems_authors_names_trgm_idx ON rubygems USING gin (authors_names gin_trgm_ops);
    CREATE INDEX rubygems_description_trgm_idx ON rubygems USING gin (description gin_trgm_ops);
    CREATE INDEX teams_name_trgm_idx ON teams USING gin (name gin_trgm_ops);
    CREATE INDEX companies_name_trgm_idx ON companies USING gin (name gin_trgm_ops);
    -- index for gem author association
    CREATE INDEX rubygems_partial_source_code_github ON rubygems (id) WHERE substr(source_code_uri,1, 17) = 'http://github.com';
    CREATE INDEX rubygems_partial_project_github ON rubygems (id) WHERE substr(project_uri,1, 17) = 'http://github.com';
    CREATE INDEX rubygems_partial_homepage_github ON rubygems (id) WHERE substr(homepage_uri,1, 17) = 'http://github.com';
    CREATE INDEX rubygems_partial_bug_tracker_github ON rubygems (id) WHERE substr(bug_tracker_uri,1, 17) = 'http://github.com';
    CREATE INDEX authorships_user_id_ix ON authorships (user_id);

    CREATE INDEX users_perishable_token_ix ON users (perishable_token);
    CREATE INDEX users_crypted_password_ix ON users (crypted_password);
    CREATE INDEX users_login_ix ON users (login);
    CREATE INDEX users_city_ix ON users (city);
    CREATE INDEX users_country_code_ix ON users (country_code);
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
    -- index for gem author association
    DROP INDEX rubygems_partial_source_code_github;
    DROP INDEX rubygems_partial_project_github;
    DROP INDEX rubygems_partial_homepage_github;
    DROP INDEX rubygems_partial_bug_tracker_github;
    DROP INDEX authorships_user_id_ix;

    DROP INDEX users_perishable_token_ix;
    DROP INDEX users_crypted_password_ix;
    DROP INDEX users_login_ix;
    DROP INDEX users_city_ix;
    DROP INDEX users_country_code_ix;
    "
  end
end
