require File.dirname(__FILE__) + '/../test_helper'

class UsersControllerTest < ActionController::TestCase

  setup do
  end

  {:new => :get, :edit => :get, :create => :post, :destroy => :delete}.each{|k,v|
    test "should not get #{k}" do
      assert_raises AbstractController::ActionNotFound do
        send(v,k, :id => 123)
      end
    end
  }

  test "should create user" do
    assert_difference('User.count') do
      post :create, :user => {:login => 'softa'}
    end
    assert_redirected_to user_path(assigns(:user))
  end

  test "should show user" do
    get :show, :id => @user.to_param
    assert_response :success
  end

end