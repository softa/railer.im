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
end
