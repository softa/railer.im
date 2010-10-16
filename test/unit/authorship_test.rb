require File.dirname(__FILE__) + '/../test_helper'

class AuthorshipTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "should create authorship" do
    create_authorship
    assert_equal 1, Authorship.count
  end
end
