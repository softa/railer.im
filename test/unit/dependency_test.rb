require File.dirname(__FILE__) + '/../test_helper'

class DependencyTest < ActiveSupport::TestCase
  test "should create" do
    create_dependency
    assert_equal 1, Dependency.count
  end
end
