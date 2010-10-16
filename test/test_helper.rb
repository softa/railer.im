ENV["RAILS_ENV"] = "test"
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.(yml|csv) for all tests in alphabetical order.
  #
  # Note: You'll currently still have to declare fixtures explicitly in integration tests
  # -- they do not yet inherit this setting
  fixtures = false

  def teardown
    Mocha::Mockery.instance.stubba.unstub_all
  end

  # Gets the next id for model
  def get_id
    @unique_id = (@unique_id || 0) + 1
  end

  def create_rubygem(params = {})
    json = File.read("#{Rails.root}/test/fixtures/rubygem.json")
    URI::HTTP.any_instance.stubs(:open).returns(OpenStruct.new({:read => json}))
#, :description => "description #{get_id}", :downloads => 0, :version => '0.0.0', :version_downloads => 0, :authors => 'great author', :project_uri => 'http://thegem.com', :gem_uri => 'http://gemcutter/gem/tar.tar.gz'
    defaults = {:name => "gem#{get_id}"}.merge(params)
    Rubygem.create!(defaults)
  end

  # Creates a test user with default values
  def create_user(params = {})
    defaults = {:name => "test user #{get_id}", :email => "test_user#{get_id}@railer.im", :company_name => "co test", :public_repo_count => 1, :blog => 'http://blog.user.com', :github_id => 'repo-1212', :public_gist_count => 1, :login => "test_user_#{get_id}", :password => 'testing_password_123', :password_confirmation => 'testing_password_123' }.merge(params)
    setup_octopi_user(defaults[:login], defaults[:email])
    User.create!(defaults)
  end

  def create_repository(params = {})
    owner = create_user
    defaults = {:name => "repo #{get_id}", :user => owner, :url => 'http://github.com/softa/hercules'}.merge(params)
    Repository.create!(defaults)
  end
  
  def setup_octopi_user(login='softa',email='contato@softa.com.br')
    octopi_repos = [
      OpenStruct.new(:name => "Rails-Target", :private => false, :owner => {}, :homepage => "", :watchers => 1, :open_issues => 0, :url => "http://github.com/softa/Rails-Target", :forks => 0, :description => "Projeto Rails do Curso da Target", :fork => false),
      OpenStruct.new(:name => "authlogic", :private => false, :owner => {}, :homepage => "http://rdoc.info/projects/binarylogic/authlogic", :watchers => 1, :open_issues => 0, :url => "http://github.com/softa/authlogic", :forks => 0, :description => "A simple model based ruby authentication solution.", :fork => true),
      OpenStruct.new(:name => "activerecord-postgres-hstore", :private => false, :owner => {}, :homepage => "", :watchers => 15, :open_issues => 0, :url => "http://github.com/softa/activerecord-postgres-hstore", :forks => 0, :description => "Goodbye serialize, hello hstore. Speed up hashes in the database.", :fork => false)
    ]
    
    octopi_followers = ["ltartari", "gmotta", "reloadbrazil", "cabral", "daviebf", "danieldocki", "gabpaladino", "fabianoleite", "acarubelli"]
    octopi_following = ["stephp", "fglock", "nkallen"]

    octopi_user = OpenStruct.new :followers_count => 9, :name => "Softa", :gravatar_id => "349785000f9fdb74a286e9b5a638c36a" , :email => email, :public_gist_count => 25, :following_count => 3, :type => "User", :public_repo_count => 39, :company => "Softa", :id => 5027, :login => login, :blog => "softa.com.br", :location => "Porto Alegre / RS - Brasil", :repositories => octopi_repos, :followers => octopi_followers, :following => octopi_following
    Octopi::User.expects(:find).returns(octopi_user)
  end

  def create_twitter_profile(params ={})
    user = create_user
    defaults = {:twitter_user => "twitter user #{get_id}", :user => user, :bio => "bio for user #{get_id}", :link => 'http://www.link.com.br'}.merge(params)
    TwitterProfile.create!(defaults)
  end

end