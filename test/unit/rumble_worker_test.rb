require File.dirname(__FILE__) + '/../test_helper'

require 'gemfile_worker'
class GemfileWorkerTest < ActiveSupport::TestCase

  def teardown
    Mocha::Mockery.instance.stubba.unstub_all
  end

  test "should perform" do
    team = create_team
    html = File.read("#{Rails.root}/test/fixtures/rumble.html")
    URI::HTTP.any_instance.stubs(:open).returns(OpenStruct.new({:read => html}))

    RumbleWorker.perform team.id
    team.reload
    assert_equal 0, team
    #assert_equal 4, team.members
  end

end
