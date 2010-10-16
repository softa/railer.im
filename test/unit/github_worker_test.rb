require File.dirname(__FILE__) + '/../test_helper'
require 'github_worker'

class GithubWorkerTest < ActiveSupport::TestCase

  def setup_octopi

    setup_octopi_user('softa', 'contato@softa.com.br')
    #setup_octopi_user

    octopi_authlogic_repos = [
      OpenStruct.new(:username => "softa", :size => 5555, :name => "authlogic", :followers => 7, :created => Time.gm(2002,"jan",1,20,15,1), :type => "repo", :language => "Ruby", :forks => 1, :description => "Simple deploy solution for ruby applications (using github+bundler).", :pushed => Time.gm(2003,"jan",1,20,15,1), :id => "repo-777433", :score => 1.234567, :fork => false)
    ]

    octopi_hstore_repos = [
      OpenStruct.new(:username => "diogob", :size => 4820, :name => "activerecord-postgres-hstore", :followers => 7, :created => Time.gm(2000,"jan",1,20,15,1), :type => "repo", :language => "Ruby", :forks => 1, :description => "Simple deploy solution for ruby applications (using github+bundler).", :pushed => Time.gm(2000,"jan",1,20,15,1), :id => "repo-777433", :score => 6.0756235, :fork => false),
      OpenStruct.new(:username => "softa", :size => 6666, :name => "activerecord-postgres-hstore", :followers => 6, :created => Time.gm(2005,"jan",1,20,15,1), :type => "repo", :language => "Ruby & Pg", :forks => 1, :description => "Simple deploy solution for ruby applications (using github+bundler).", :pushed => Time.gm(2006,"jan",1,20,15,1), :id => "repo-666666", :score => 6.666666, :fork => false)
    ]
    
    octopi_target_repos = [
      OpenStruct.new(:username => "softa", :size => 0, :name => "Rails-Target", :followers => 7, :created => Time.gm(2001,"feb",1,20,15,1), :type => "repo", :language => "Haskell", :forks => 1, :description => "Simple deploy solution for ruby applications (using github+bundler).", :pushed => Time.gm(2009,"feb",1,20,15,1), :id => "repo-777433", :score => 6.0756235, :fork => false)
    ]
    
    Octopi::Repository.expects(:find_all).with('authlogic').returns(octopi_authlogic_repos)
    Octopi::Repository.expects(:find_all).with('activerecord-postgres-hstore').returns(octopi_hstore_repos)
    Octopi::Repository.expects(:find_all).with('Rails-Target').returns(octopi_target_repos)

    location = OpenStruct.new(:accuracy => 5, :success => true, :provider => "yahoo", :city => "Porto Alegre", :province => nil, :street_address => nil, :lng => -51.22802, :country_code => "BR", :precision => "zip", :state => "Brazil", :all => [], :lat => -30.03425, :full_address => nil, :zip => nil)
    Geokit::Geocoders::YahooGeocoder.expects(:geocode).with('Porto Alegre / RS - Brasil').returns(location)

  end

  def teardown
    Mocha::Mockery.instance.stubba.unstub_all
  end

  test "should perform" do
    
    #TODO should check if theres company
    @user = create_user(:login => 'softa', :email => 'contato@softa.com.br')#User.create :login => 'softa'
    #, :email => 'foo@bar.com', :password => '123456', :password_confirmation => '123456'
    #@user.update_attribute :email, nil # what a workaround!!!
    setup_octopi
    GithubWorker.perform @user.id
    @user.reload
    assert_equal "Softa", @user.name
    assert_equal "349785000f9fdb74a286e9b5a638c36a", @user.gravatar_id
    assert_equal "contato@softa.com.br", @user.email
    assert_equal 25, @user.public_gist_count
    assert_equal 39, @user.public_repo_count
    assert_equal "Softa", @user.company_name
    assert_equal "Softa", @user.company.name
    #assert_equal 5027, @user.github_id # PROBLEM WITH OSRTUCT YACCC
    assert_equal "softa", @user.login
    assert_equal "softa.com.br", @user.blog
    assert_equal "Porto Alegre / RS - Brasil", @user.location
    assert_equal 5, @user.accuracy
    assert_equal "Porto Alegre", @user.city
    assert_equal nil, @user.province
    assert_equal nil, @user.street_address
    assert_equal -51.22802, @user.lng
    assert_equal "BR", @user.country_code
    assert_equal "zip", @user.precision
    assert_equal "Brazil", @user.state
    assert_equal -30.03425, @user.lat
    assert_equal nil, @user.full_address
    assert_equal nil, @user.zip

    assert_equal 3, @user.repositories.count
    hstore,authlogic,target = @user.repositories.order('name')

    assert_equal "activerecord-postgres-hstore", hstore.name
    assert_equal "", hstore.homepage
    assert_equal 15, hstore.watchers
    assert_equal 0, hstore.open_issues
    assert_equal "http://github.com/softa/activerecord-postgres-hstore", hstore.url
    assert_equal 0, hstore.forks
    assert_equal "Goodbye serialize, hello hstore. Speed up hashes in the database.", hstore.description
    assert_equal false, hstore.fork
    assert_equal Time.gm(2005,"jan",1,20,15,1), hstore.originaly_created_at
    assert_equal Time.gm(2006,"jan",1,20,15,1), hstore.pushed_at
    assert_equal 6.666666, hstore.score
    assert_equal "Ruby & Pg", hstore.language
    # assert_equal "repo-666666", hstore.repo_id # PROBLEM WITH OSRTUCT YACCC
    assert_equal 6666, hstore.size

    assert_equal "authlogic", authlogic.name
    assert_equal "http://rdoc.info/projects/binarylogic/authlogic", authlogic.homepage
    assert_equal 1, authlogic.watchers
    assert_equal 0, authlogic.open_issues
    assert_equal "http://github.com/softa/authlogic", authlogic.url
    assert_equal 0, authlogic.forks
    assert_equal "A simple model based ruby authentication solution.", authlogic.description
    assert_equal true, authlogic.fork
    assert_equal Time.gm(2002,"jan",1,20,15,1), authlogic.originaly_created_at
    assert_equal Time.gm(2003,"jan",1,20,15,1), authlogic.pushed_at
    assert_equal 1.234567, authlogic.score
    assert_equal "Ruby", authlogic.language
    # assert_equal "repo-666666", hstore.repo_id # PROBLEM WITH OSRTUCT YACCC
    assert_equal 5555, authlogic.size

    assert_equal "Rails-Target", target.name
    assert_equal "", target.homepage
    assert_equal 1, target.watchers
    assert_equal 0, target.open_issues
    assert_equal "http://github.com/softa/Rails-Target", target.url
    assert_equal 0, target.forks
    assert_equal "Projeto Rails do Curso da Target", target.description
    assert_equal false, target.fork

    assert_equal Time.gm(2001,"feb",1,20,15,1), target.originaly_created_at
    assert_equal Time.gm(2009,"feb",1,20,15,1), target.pushed_at
    assert_equal 6.0756235, target.score
    assert_equal "Haskell", target.language
    # assert_equal "repo-666666", hstore.repo_id # PROBLEM WITH OSRTUCT YACCC
    assert_equal 0, target.size

  end



  test "should perform - not replacing name and location" do
    #TODO tirar o confirmation quando o pedro tirar o requirement
    @user = create_user(:login => 'softa')
    @user.update_attributes :email => 'foo@bar.com', :password => '123456', :password_confirmation => '123456', :name => 'Pedro Axelrud', :location => 'Nowhere', :blog => 'maiz.tumblr.com'

    #TODO should check if theres company
    setup_octopi
    GithubWorker.perform @user.id
    @user.reload
    assert_equal "Pedro Axelrud", @user.name
    assert_equal "349785000f9fdb74a286e9b5a638c36a", @user.gravatar_id
    assert_equal "foo@bar.com", @user.email
    assert_equal "Nowhere", @user.location
    assert_equal "maiz.tumblr.com", @user.blog
  end
end