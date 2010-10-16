require File.dirname(__FILE__) + '/../test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @u = create_user
  end
  test "should create user" do
    assert 1, User.count
  end

  test "should be able to recomend user" do
    recomended = create_user
    @u.recomend(recomended)
    assert_equal 1, Recomendation.count
    assert_equal @u.recomends.first, recomended
    assert_equal recomended.recomended_by.first, @u
  end
  
  test "should be able to create an user without the password_confirmation" do
    User.create!(:login => 'joaodocaminhao', :email => 'joaodocaminhao@bol.com.br', :password => 'velhagorda')
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
end
