require File.dirname(__FILE__) + '/../test_helper'

class TwitterProfileTest < ActiveSupport::TestCase
  def setup
    @twitter = create_twitter_profile
  end

  test "should create twitter profile" do
    assert_equal 1, TwitterProfile.count
  end

  test "should be able to follow another user" do
    followee = create_twitter_profile
    @twitter.follows followee.twitter_user
    assert_equal 1, TwitterFollower.count
    assert_equal @twitter.followees.first, followee
    assert_equal followee.followers.first, @twitter
  end

  test "should fail gracefully if followee does not exist" do
    @twitter.follows 'login_that_does_not_exist'
    assert_equal 0, TwitterFollower.count
  end

  test "should be able to be followed by another user" do
    follower = create_twitter_profile
    @twitter.is_followed_by follower.twitter_user
    assert_equal 1, TwitterFollower.count
    assert_equal @twitter.followers.first, follower
#    assert_equal follower.followees.first, @twitter
  end

  test "should fail gracefully if follower does not exist" do
    @twitter.is_followed_by 'login_that_does_not_exist'
    assert_equal 0, TwitterFollower.count
  end
end
