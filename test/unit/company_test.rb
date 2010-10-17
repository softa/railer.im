require File.dirname(__FILE__) + '/../test_helper'

class CompanyTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "should create company" do
    create_company
    assert_equal 1, Company.count
  end

  test "search should return exact match" do
    create_company :name => "testing search"
    create_company :name => "entry that will not appear"
    assert_equal 1, Company.search("testing search").count
  end

  test "search should return partial match" do
    create_company :name => "testing search"
    create_company :name => "another test that should appear"
    create_company :name => "entry that will not appear"
    assert_equal 2, Company.search("test").count
  end

  test "scope by_similarity should match company name" do
    create_company :name => "testing search"
    create_company :name => "another testing search"
    create_company :name => "entry that will not appear"

    Search.set_similarity_threshold(0.5)
    r = Company.by_similarity('testing search')
    assert_equal 2, r.size
    assert_equal 'testing search', r.first.name

    r = Company.by_similarity('another testing search')
    assert_equal 2, r.size
    assert_equal 'another testing search', r.first.name
  end
end
