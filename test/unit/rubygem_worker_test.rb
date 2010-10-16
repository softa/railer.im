require File.dirname(__FILE__) + '/../test_helper'
require 'rubygem_worker'

class RubygemsWorkerTest < ActiveSupport::TestCase

  def setup
    json = File.read("#{Rails.root}/test/fixtures/rubygem.json")
    URI::HTTP.any_instance.stubs(:open).returns(OpenStruct.new({:read => json}))
    @rubygem = create_rubygem :name => 'foo'
  end

  def teardown
    Mocha::Mockery.instance.stubba.unstub_all
  end

  test "should perform" do
    RubygemWorker.perform @rubygem.id
    @rubygem.reload
    assert_equal "Ruby on Rails is a full-stack web framework optimized for programmer happiness and sustainable productivity. It encourages beautiful code by favoring convention over configuration.", @rubygem.description
    assert_equal 1680269, @rubygem.downloads
    assert_equal "3.0.1", @rubygem.version
    assert_equal 7330, @rubygem.version_downloads
    assert_equal "http://www.rubyonrails.org", @rubygem.homepage_uri
    assert_equal "http://rails.lighthouseapp.com/projects/8994-ruby-on-rails", @rubygem.bug_tracker_uri
    assert_equal "http://github.com/rails/rails", @rubygem.source_code_uri
    assert_equal "http://rubygems.org/gems/rails-3.0.1.gem", @rubygem.gem_uri
    assert_equal "http://rubygems.org/gems/rails", @rubygem.project_uri
    assert_equal "David Heinemeier Hansson", @rubygem.authors_names
    assert_equal "http://groups.google.com/group/rubyonrails-talk", @rubygem.mailing_list_uri
    assert_equal "http://api.rubyonrails.org", @rubygem.documentation_uri
    assert_equal "http://wiki.rubyonrails.org", @rubygem.wiki_uri
  end
end
