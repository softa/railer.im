require File.dirname(__FILE__) + '/../test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @u = create_user(:email => 'contato@softa.com.br')
  end
  def teardown
    Mocha::Mockery.instance.stubba.unstub_all
  end

  test "should create user" do
    #setup_octopi_user('ltartari','ltartari@softa.com.br') # needed 'cause it creates 2 users
    assert_difference('User.count') do
      assert create_user
    end
  end

  test "should be able to recomend user" do
    #setup_octopi_user('ltartari','ltartari@softa.com.br') # needed 'cause it creates 2 users
    #u = create_user
    recomended = create_user
    assert_difference('Recomendation.count') do
      @u.recomend(recomended)
    end
    assert_equal @u.recomends.first, recomended
    assert_equal recomended.recomended_by.first, @u

  # 
  # test "should be able to recomend user" do
  #   recomended = create_user
  #   @u.recomend(recomended)
  #   assert_equal 1, Recomendation.count
  #   assert_equal @u.recomends.first, recomended
  #   assert_equal recomended.recomended_by.first, @u
  end

  #TODO ORGANIZATIONS!
  test "should be able to create an user only with login" do
#    setup_octopi_user('ltartari','ltartari@softa.com.br') # needed 'cause it creates 2 users
#    user = User.create(:login => 'softa')
    assert_equal 'Softa', @u.name
    assert_equal 'contato@softa.com.br', @u.email
    assert_equal 'Porto Alegre / RS - Brasil', @u.location
  end
  
  test "should be able to follow another user" do
    #setup_octopi_user('ltartari','ltartari@softa.com.br') # needed 'cause it creates 2 users
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
    #setup_octopi_user('ltartari','ltartari@softa.com.br') # needed 'cause it creates 2 users
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
end