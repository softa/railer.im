require File.dirname(__FILE__) + '/../test_helper'

class UserSessionsControllerTest < ActionController::TestCase

  setup do
    @user = create_user(:login => 'joao')
  end
  
  test "should login with valid credentials" do
    @user.update_attribute(:password, '102030')
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
  
  
  test "should redirect to home if you try to login without a valid token" do
    get :token_auth
    assert_equal nil, assigns(:user_session)
    assert_redirected_to root_path
  end
  
  test "should created the session and redirect to set password page" do
    get :token_auth, {:token => @user.perishable_token}
    assert_not_nil assigns(:user_session)
    assert_redirected_to profile_path(@user)
  end

end