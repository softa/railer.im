require File.dirname(__FILE__) + '/../test_helper'
require 'railsplugins_worker'

class RailspluginsWorkerTest < ActiveSupport::TestCase

  def setup
    headers = {'Accept' => 'application/json, text/javascript', 'User-Agent' => 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_3; en-US) AppleWebKit/534.3 (KHTML, like Gecko) Chrome/6.0.472.63 Safari/534.3', 'Referer' => 'http://www.railsplugins.org/home', 'X-Requested-With' => 'XMLHttpRequest'}
    json = File.read("#{Rails.root}/test/fixtures/railsplugins.json")
    URI::HTTP.any_instance.stubs(:open).with(headers).returns(OpenStruct.new({:read => json}))

    html = File.read("#{Rails.root}/test/fixtures/railsplugins.html")
    URI::HTTP.any_instance.stubs(:open).with().returns(OpenStruct.new({:read => html}))
    
    #TODO DIOGO are u really sure all that fields exists????
    @rubygem = create_rubygem :name => 'authlogic', :description => 'cool gem', :downloads => 0, :version => '6.6.6', :version_downloads => 0, :authors => 'John Doe', :project_uri => '', :gem_uri => ''
  end

  def teardown
    Mocha::Mockery.instance.stubba.unstub_all
  end

  test "should perform" do
    RailspluginsWorker.perform @rubygem.id
    @rubygem.reload
    assert_equal '2.1.6', @rubygem.indicators_version
    assert_equal 56, @rubygem.railsplugins_id
#    assert_equal {}, @rubygem.indicators
  end

end