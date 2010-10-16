require File.dirname(__FILE__) + '/../test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @u = create_user(:email => 'contato@softa.com.br', :login => 'softa')
  end
  def teardown
    Mocha::Mockery.instance.stubba.unstub_all
  end

  test "should create user" do
    assert_difference('User.count') do
      assert create_user
    end
  end

  test "should return login on to_param" do
    assert_equal 'softa', @u.to_param
  end
  test "should be able to recomend user" do
    recommended = create_user
    assert_difference('Recommendation.count') do
      @u.recommend(recommended)
    end
    assert_equal @u.recommends.first, recommended
    assert_equal recommended.recommended_by.first, @u
  end

  #TODO ORGANIZATIONS!
  test "should be able to create an user only with login" do
    assert_equal 'Softa', @u.name
    assert_equal 'contato@softa.com.br', @u.email
    assert_equal 'Porto Alegre / RS - Brasil', @u.location
  end
  
  test "should be able to follow another user" do
    followee = create_user
    @u.follows followee.login
    assert_equal 1, GitFollower.count
    assert_equal @u.followees.first, followee
    assert_equal followee.followers.first, @u
  end

  test "should fail gracefully if followee does not exist" do
    @u.follows 'login_that_does_not_exist'
    assert_equal 0, GitFollower.count
  end

  test "should be able to be followed by another user" do
    follower = create_user
    @u.is_followed_by follower.login
    assert_equal 1, GitFollower.count
    assert_equal @u.followers.first, follower
    assert_equal follower.followees.first, @u
  end

  test "should fail gracefully if follower does not exist" do
    @u.is_followed_by 'login_that_does_not_exist'
    assert_equal 0, GitFollower.count
  end

  test "should list owned gems using the Authorship" do
    a = create_authorship :author => @u
    rubygem = a.rubygem

    assert_equal 1, @u.owned_gems.size
    assert_equal rubygem, @u.owned_gems.first
  end

  test "should list repositories" do
    repo = create_repository :user => @u
    assert_equal 1, @u.repositories.size
    assert_equal repo, @u.repositories.first
  end
end
