require 'test_helper'

class TeamMembershipTest < ActiveSupport::TestCase
  test "should create memberships" do
    create_team_membership
    assert_equal 1, TeamMembership.count
  end
end
