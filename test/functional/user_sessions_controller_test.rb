require File.dirname(__FILE__) + '/../test_helper'

class UserSessionsControllerTest < ActionController::TestCase
  setup do
    @user = create_user(:login => 'joao')
  end
  
  test "should login with valid credentials" do
    post :create, :format => 'json', :user_session => {:login => 'joao', :password => '102030'}
    assert_response :success
    json = JSON.parse @response.body
    assert_equal 'joao', json["login"]
  end
  
  test "should not login with invalid credentials" do
    post :create, :format => 'json', :user_session =>  {:login => 'joaozao', :password => '102030'}
    assert_response 422
    json = JSON.parse @response.body
    assert_equal 'is not valid', json["login"]
  end

end
