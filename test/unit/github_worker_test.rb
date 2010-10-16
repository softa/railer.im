require File.dirname(__FILE__) + '/../test_helper'
require 'github_worker'

class GithubWorkerTest < ActiveSupport::TestCase

  def setup
    octopi_user = Octopi::User.new :followers_count => 9, :name => "Softa", :gravatar_id => "349785000f9fdb74a286e9b5a638c36a" , :email => "contato@softa.com.br", :public_gist_count => 25, :following_count => 3, :type => "User", :public_repo_count => 39, :company => "Softa", :id => 5027, :login => "softa", :blog => "softa.com.br", :location => "Porto Alegre / RS - Brasil"
    Octopi::User.any_instance.stubs(:find).returns(octopi_user)
    octopi_repos = [
      Octopi::Repository.new(:name => "Rails-Target", :private => false, :owner => octopi_user, :homepage => "", :watchers => 1, :open_issues => 0, :url => "http://github.com/softa/Rails-Target", :forks => 0, :description => "Projeto Rails do Curso da Target", :fork => false),
      Octopi::Repository.new(:name => "authlogic", :private => false, :owner => octopi_user, :homepage => "http://rdoc.info/projects/binarylogic/authlogic", :watchers => 1, :open_issues => 0, :url => "http://github.com/softa/authlogic", :forks => 0, :description => "A simple model based ruby authentication solution.", :fork => true),
      Octopi::Repository.new(:name => "activerecord-postgres-hstore", :private => false, :owner => octopi_user, :homepage => "", :watchers => 15, :open_issues => 0, :url => "http://github.com/softa/activerecord-postgres-hstore", :forks => 0, :description => "Goodbye serialize, hello hstore. Speed up hashes in the database.", :fork => false)
    ]
    Octopi::User.any_instance.stubs(:repositories).returns(octopi_repos)

    octopi_more_repos = [
        Octopi::Repository.new(:username => "diogob", :size => 4820, :name => "activerecord-postgres-hstore", :followers => 7, :created => Time.new, :type => "repo", :language => "Ruby", :forks => 1, :description => "Simple deploy solution for ruby applications (using github+bundler).", :pushed => "2010-10-14T16:02:50Z", :id => "repo-777433", :score => 6.0756235, :fork => false),
        Octopi::Repository.new(:username => "softa", :size => 4820, :name => "activerecord-postgres-hstore", :followers => 7, :created => Time.new, :type => "repo", :language => "Ruby", :forks => 1, :description => "Simple deploy solution for ruby applications (using github+bundler).", :pushed => "2010-10-14T16:02:50Z", :id => "repo-777433", :score => 6.0756235, :fork => false)
    ]
    Octopi::User.any_instance.stubs(:find_all).returns(octopi_more_repos)
    @user = User.create :login => 'softa'
  end

  def teardown
    Mocha::Mockery.instance.stubba.unstub_all
  end

  test "should perform" do
    GithubWorker.perform @user.id
    @user.reload
    assert_equal 9, @user.followers_count
    assert_equal "Softa", @user.name
    assert_equal "349785000f9fdb74a286e9b5a638c36a", @user.gravatar_id
    assert_equal "contato@softa.com.br", @user.email
    assert_equal 25, @user.public_gist_count
    assert_equal 3, @user.following_count
    assert_equal 39, @user.public_repo_count
    assert_equal "Softa", @user.company_name
    assert_equal "Softa", @user.company.name
    assert_equal 5027, @user.github_id
    assert_equal "softa", @user.login
    assert_equal "softa.com.br", @user.blog
    assert_equal "Porto Alegre / RS - Brasil", @user.location

    assert_equal 3, @user.repositories.count
    hstore,authlogic,target = @user.repositories.order('name')
    assert_equal "activerecord-postgres-hstore", hstore.name
    assert_equal false, hstore.private
    assert_equal "", hstore.homepage
    assert_equal 15, hstore.watchers
    assert_equal 0, hstore.open_issues
    assert_equal "http://github.com/softa/activerecord-postgres-hstore", hstore.url
    assert_equal 0, hstore.forks
    assert_equal "Goodbye serialize, hello hstore. Speed up hashes in the database.", hstore.description
    assert_equal false, hstore.fork

    assert_equal "authlogic", authlogic.name
    assert_equal false, authlogic.private
    assert_equal "http://rdoc.info/projects/binarylogic/authlogic", authlogic.homepage
    assert_equal 1, authlogic.watchers
    assert_equal 0, authlogic.open_issues
    assert_equal "http://github.com/softa/authlogic", authlogic.url
    assert_equal 0, authlogic.forks
    assert_equal "A simple model based ruby authentication solution.", authlogic.description
    assert_equal true, authlogic.fork

    assert_equal "Rails-Target", authlogic.name
    assert_equal false, authlogic.private
    assert_equal "", authlogic.homepage
    assert_equal 1, authlogic.watchers
    assert_equal 0, authlogic.open_issues
    assert_equal "http://github.com/softa/Rails-Target", authlogic.url
    assert_equal 0, authlogic.forks
    assert_equal "Projeto Rails do Curso da Target", authlogic.description
    assert_equal false, authlogic.fork
        
  end
end