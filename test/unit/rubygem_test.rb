require File.dirname(__FILE__) + '/../test_helper'

class RubygemTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  def setup
    @rubygem = create_rubygem
  end

  def teardown
    Mocha::Mockery.instance.stubba.unstub_all
  end

  test "should have uri - wiki_uri" do
    @rubygem.update_attributes :wiki_uri => 'http://www.railer.im', :homepage_uri => nil
    assert_equal 'http://www.railer.im', @rubygem.uri
  end

  test "should have uri - project_uri" do
    @rubygem.update_attributes :project_uri => 'http://www.google.com', :homepage_uri => nil, :wiki_uri => nil
    @rubygem.reload
    assert_equal 'http://www.google.com', @rubygem.uri
  end

  test "should have uri - homepage_uri" do
    @rubygem.update_attribute :homepage_uri, 'http://www.yahoo.com'
    assert_equal 'http://www.yahoo.com', @rubygem.uri
  end

  test "should be able to list authors through authorships" do
  end

  test "should insert in table authorships" do
    @rubygem.update_attribute :authors_names, 'Author 1, Dr. Author 2, Sir Author 3'
    @rubygem.update_authorship
    assert_equal 3, Authorship.count
    assert_equal Set.new(['Author 1', 'Dr. Author 2', 'Sir Author 3']), Set.new(Authorship.all.map{|a| a.author_name})
  end
end
