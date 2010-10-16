require File.dirname(__FILE__) + '/../test_helper'

class RepositoryTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "should create repository" do
    create_repository
    assert 1, Repository.count
  end
end
