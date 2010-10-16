require 'test_helper'

class TeamTest < ActiveSupport::TestCase
  test "should create team" do
    create_team
    assert_equal 1, Team.count
  end

  test "should be able to insert team members" do
  end
end
