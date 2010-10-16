require File.dirname(__FILE__) + '/../test_helper'

class AuthorshipTest < ActiveSupport::TestCase
  test "should create authorship" do
    create_authorship
    assert_equal 2, Authorship.count # one from the create_authorship +1 on the after_create of the rubygem
  end

  test "should return all the unbound authorships (authorships without railerim  users)" do
    create_authorship :author => nil
    create_authorship
    assert_equal 4, Authorship.count # one from the create_authorship +2 on the after_create of the rubygem
    assert_equal 3, Authorship.unbound.count
  end
end
