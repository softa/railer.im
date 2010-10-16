require File.dirname(__FILE__) + '/../test_helper'

class RepositoryTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  def setup
    setup_octopi_user
  end
  def teardown
    Mocha::Mockery.instance.stubba.unstub_all
  end

  test "should create repository" do
    create_repository
    assert 1, Repository.count
  end
end
