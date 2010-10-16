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

  test "should remove from table authorships those who are no longer in authors_names while preserving the others" do
    authorships = ['Author 1', 'Dr. Author 2', 'Sir Author 3'].map{ |name| @rubygem.authorships.create! :author_name => name }
    assert_equal 4, Authorship.count # 3 from the line above + 1 from the after_create of the rubygem
    @rubygem.update_attribute :authors_names, 'Author 1, Dr. Author, Sir Author 3'
    @rubygem.update_authorship
    assert_equal Set.new(['Author 1', 'Dr. Author', 'Sir Author 3']), Set.new(Authorship.all.map{|a| a.author_name})
    assert_equal(authorships[0], Authorship.find_by_author_name('Author 1'))
    assert_equal(authorships[2], Authorship.find_by_author_name('Sir Author 3'))
  end

  test "should call update_authorship before the rubygem create" do
    create_rubygem
    assert_equal Set.new(['David Heinemeier Hansson']), Set.new(Authorship.all.map{|a| a.author_name})
  end

  test "should list gems used by one user" do
    u = create_user
    g = create_rubygem
    create_dependency(:rubygem => g, :repository => create_repository(:user => u))
    create_dependency
    assert_equal 1, u.repositories.size
    assert_equal 1, g.dependents.size
    assert_equal 1, Rubygem.used_by(u).count
    assert_equal g, Rubygem.used_by(u).first
  end
end
