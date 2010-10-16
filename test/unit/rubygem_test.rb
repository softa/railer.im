require File.dirname(__FILE__) + '/../test_helper'

class RubygemTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  def setup
    @rubygem = create_rubygem
  end
  test "should not have uri" do
    assert_equal nil, @rubygem.uri
  end

  test "should have uri - wiki_uri" do
    @rubygem.update_attribute :wiki_uri, 'http://www.railer.im'
    assert_equal 'http://www.railer.im', @rubygem.uri
  end

  test "should have uri - project_uri" do
    @rubygem.update_attributes :wiki_uri => 'http://www.railer.im', :project_uri => 'http://www.google.com'
    assert_equal 'http://www.google.com', @rubygem.uri
  end

  test "should have uri - homepage_uri" do
    @rubygem.update_attributes :wiki_uri => 'http://www.railer.im', :project_uri => 'http://www.google.com', :homepage_uri => 'http://www.yahoo.com'
    assert_equal 'http://www.yahoo.com', @rubygem.uri
  end

end
