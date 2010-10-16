# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

<<<<<<< HEAD
ActiveRecord::Schema.define(:version => 20101016013527) do
=======
ActiveRecord::Schema.define(:version => 20101016010824) do
>>>>>>> 5de5224be8b4cc9cfc59e7fae15ef87bc7b779eb

  create_table "recomendations", :force => true do |t|
    t.integer  "recomends_id",  :null => false
    t.integer  "recomended_id", :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rubygems", :force => true do |t|
    t.text     "name"
    t.text     "description"
    t.integer  "downloads"
    t.text     "version"
    t.integer  "version_downloads"
    t.text     "homepage_uri"
    t.text     "authors"
    t.text     "project_uri"
    t.text     "gem_uri"
    t.text     "source_code_uri"
    t.text     "bug_tracker_uri"
    t.text     "wiki_uri"
    t.text     "mailing_list_uri"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "documentation_uri"
  end

  create_table "twitter_profiles", :force => true do |t|
    t.integer  "user_id",      :null => false
    t.text     "twitter_user", :null => false
    t.text     "bio"
    t.text     "link"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "twitter_profiles", ["twitter_user"], :name => "twitter_profiles_twitter_user_key", :unique => true
  add_index "twitter_profiles", ["user_id"], :name => "twitter_profiles_user_id_key", :unique => true

  create_table "users", :force => true do |t|
    t.text     "name"
    t.text     "email"
    t.text     "company"
    t.integer  "public_repo_count"
    t.text     "blog"
    t.text     "github_id"
    t.integer  "followers_count"
    t.integer  "public_gist_count"
    t.text     "gravatar_id"
    t.text     "location"
    t.text     "login"
    t.text     "crypted_password"
    t.text     "password_salt"
    t.text     "persistence_token"
    t.text     "single_access_token"
    t.text     "perishable_token"
    t.integer  "login_count"
    t.integer  "failed_login_count"
    t.datetime "last_request_at"
    t.datetime "current_login_at"
    t.datetime "last_login_at"
    t.text     "current_login_ip"
    t.text     "last_login_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
