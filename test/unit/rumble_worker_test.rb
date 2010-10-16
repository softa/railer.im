require File.dirname(__FILE__) + '/../test_helper'

require 'rumble_worker'
class RumbleWorkerTest < ActiveSupport::TestCase

  def teardown
    Mocha::Mockery.instance.stubba.unstub_all
  end

  test "should perform" do
    team = create_team
    html = File.read("#{Rails.root}/test/fixtures/rumble.html")
    URI::HTTP.any_instance.stubs(:open).returns(OpenStruct.new({:read => html}))

    RumbleWorker.perform team.id
    team.reload
    assert_equal 4, team.team_memberships.count
    assert_equal ['Jose Peleteiro', 'cainanunes','gcirne', 'muanis'], team.team_memberships.map(&:name).sort
    assert_equal ["beer data from freebase", "mongodb", "solr + sunspot", "ruby 1.9.2", "rails 3.0.1", "rspec 2.0", "steak"], team.how
    assert_equal({"Entry URL:"=>"http://beercheckin.r10.railsrumble.com"}, team.where)
    assert_equal "Drink a Beer and tell everyone! Collect beers from around the world!", team.what
    assert_equal "https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287232148/423628/thumb_screenshot.png", team.thumbnail
    assert_equal "https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287232148/423628/screenshot.png", team.image
  end

  test "should perform 2" do
    team = create_team
    html = File.read("#{Rails.root}/test/fixtures/rumble2.html")
    URI::HTTP.any_instance.stubs(:open).returns(OpenStruct.new({:read => html}))

    RumbleWorker.perform team.id
    team.reload
    assert_equal 4, team.team_memberships.count
    assert_equal ["ajsharp", "patmaddox", "sid", "xternal"], team.team_memberships.map(&:name).sort
    assert_equal ["neo4j"], team.how
    assert_equal({"Entry URL:"=>"http://newspaperly.r10.railsrumble.com"}, team.where)
    assert_equal "An app that integrates with twitter as well as news/link aggregation services (reddit an hacker news) to generate a personalized online \"newspaper\" for the user.", team.what
    assert_equal "https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287229221/423504/thumb_screenshot.png", team.thumbnail
    assert_equal "https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287229221/423504/screenshot.png", team.image
  end

  test "should perform 3" do
    team = create_team
    html = File.read("#{Rails.root}/test/fixtures/rumble3.html")
    URI::HTTP.any_instance.stubs(:open).returns(OpenStruct.new({:read => html}))

    RumbleWorker.perform team.id
    team.reload
    assert_equal 4, team.team_memberships.count
    assert_equal ["diogob", "juanmaiz", "leotartari", "pedroaxl"], team.team_memberships.map(&:name).sort
    assert_equal ["This team is yet to tell us the resources they've used."], team.how
    assert_equal({"Entry URL:"=>"http://railerim.r10.railsrumble.com"}, team.where)
    assert_equal "railer.im is the new railer's profile website", team.what
    assert_equal "https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287235299/423793/thumb_screenshot.png", team.thumbnail
    assert_equal "https://d37iuui1vjm6wb.cloudfront.net/screenshots/html_document/screenshot_windows_chrome_5/1287235299/423793/screenshot.png", team.image
  end

end