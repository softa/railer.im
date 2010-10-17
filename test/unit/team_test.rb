require 'test_helper'

class TeamTest < ActiveSupport::TestCase
  test "should create team" do
    create_team
    assert_equal 1, Team.count
  end

  test "scope by_similarity should match team name" do
    create_team :name => "testing search"
    create_team :name => "another testing search"
    create_team :name => "entry that will not appear"

    Search.set_similarity_threshold(0.5)
    r = Team.by_similarity('testing search')
    assert_equal 2, r.size
    assert_equal 'testing search', r.first.name

    r = Team.by_similarity('another testing search')
    assert_equal 2, r.size
    assert_equal 'another testing search', r.first.name
  end
end
