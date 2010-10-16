require File.dirname(__FILE__) + '/../test_helper'

class UserTest < ActiveSupport::TestCase
  test "should create user" do
    u = create_user
    assert 1, User.count
  end

  test "should be able to recomend user" do
    u = create_user
    recomended = create_user
    u.recomend(recomended)
    assert_equal 1, Recomendation.count
    assert_equal u.recomends.first, recomended
    assert_equal recomended.recomended_by.first, u
  end
  
  test "should be able to create an user without the password_confirmation" do
    User.create!(:login => 'joaodocaminhao', :email => 'joaodocaminhao@bol.com.br', :password => 'velhagorda')
  end
  
  test "should be able to follow another user" do
    u = create_user
    followee = create_user
    u.follows followee.login
    assert_equal 1, GitFollower.count
    assert_equal u.followees.first, followee
    assert_equal followee.followers.first, u
  end

  test "should fail gracefully if followee does not exist" do
    u = create_user
    u.follows 'login_that_does_not_exist'
    assert_equal 0, GitFollower.count
  end
end
