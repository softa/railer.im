require File.dirname(__FILE__) + '/../test_helper'

class TeamsControllerTest < ActionController::TestCase
  setup do
  end
  teardown do
    Mocha::Mockery.instance.stubba.unstub_all
  end

  {:new => :get, :edit => :get, :create => :post, :update => :put, :destroy => :delete}.each{|k,v|
    test "should not get #{k}" do
      assert_raises ActionController::RoutingError do
        send(v,k, :id => 123)
      end
    end
  }

  test "should show team" do
    @team = create_team
    get :show, :id => @team.to_param
    assert_response :success
  end

end