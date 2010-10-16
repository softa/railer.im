require File.dirname(__FILE__) + '/../test_helper'

class AuthorshipTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "should create authorship" do
    create_authorship
    assert_equal 2, Authorship.count # one from the create_authorship +1 on the after_create of the rubygem
  end
end
