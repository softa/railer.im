require File.dirname(__FILE__) + '/../test_helper'

class WwrWorkerTest < ActiveSupport::TestCase
=begin
  def setup
    @user = create_user
  end

  def teardown
    Mocha::Mockery.instance.stubba.unstub_all
  end

  test "should perform 1" do
    html = File.read("#{Rails.root}/test/fixtures/rumble.html")
    URI::HTTP.any_instance.stubs(:open).returns(OpenStruct.new({:read => html}))
    
    WwrWorker.perform @user.id
    @user.reload
    assert_equal 17, @user.
  end

  test "should perform 2" do
    html = File.read("#{Rails.root}/test/fixtures/rumble.html")
    URI::HTTP.any_instance.stubs(:open).returns(OpenStruct.new({:read => html}))
    
    WwrWorker.perform @user.id
    @user.reload
    assert_equal 307, @user.

  end
=end
end