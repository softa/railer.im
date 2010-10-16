require 'test_helper'

class TeamMembershipTest < ActiveSupport::TestCase
  test "should create memberships" do
    create_team_membership
    assert_equal 1, TeamMembership.count
  end

  test "unbound should return every team without user_id" do
    create_team_membership
    tm = create_team_membership :user => nil
    assert_equal 2, TeamMembership.count
    assert_equal [tm], TeamMembership.unbound.all
  end
end
