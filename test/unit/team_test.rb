require 'test_helper'

class TeamTest < ActiveSupport::TestCase
  test "should create team" do
    create_team
    assert_equal 1, Team.count
  end

  test "should be able to insert team members" do
    t = create_team
    u = create_user
    u.team = t
    u.save
    assert_equal 1, Team.count
    assert_equal 1, t.users.size
    assert_equal u, t.users.first
  end
end
