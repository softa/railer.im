require File.dirname(__FILE__) + '/../test_helper'

#TODO SHOULD NOT GET NON USERS (ORGS)
class UsersControllerTest < ActionController::TestCase

  require 'authlogic/test_case'
  setup :activate_authlogic

  setup do
    #setup_octopi_user
  end
  teardown do
    Mocha::Mockery.instance.stubba.unstub_all
  end

  # PEDRO: edit method was being tested below. Now that the method really exists, the test was failling, so I took it out.
  {:new => :get, :destroy => :delete}.each{|k,v|
    test "should not get #{k}" do
      assert_raises ActionController::RoutingError do
        send(v,k, :id => 123)
      end
    end
  }

  test "should create user" do
    assert_difference('User.count') do
      post :create, :user => {:login => 'softa', :email => 'contato@softa.com.br', :password => '123456', :password_confirmation => '123456', :name => 'Juan Maiz'}
    end
    assert_redirected_to user_path(assigns(:user))
  end

  test "should assign used gems" do
    g = create_rubygem
    @user = create_user :login => 'softa'
    @user.update_attributes! :email => 'contato@softa.com.br', :password => '123456', :password_confirmation => '123456', :name => 'Juan Maiz'
    create_dependency :repository => create_repository(:user => @user), :rubygem => g
    create_dependency
    get :show, :id => @user.to_param
    assert_response :success
    assert_equal @user, assigns(:user)
    assert_equal [g], assigns(:user).used_gems
  end

  test "should update user" do
    @user = create_user(:login => 'softa', :email => 'contato@softa.com.br', :password => '123456', :password_confirmation => '123456', :name => 'Juan Maiz')
    UserSession.create!(@user)
    put :update, {:id => @user.to_param, :user => {:email => 'juanmaiz@gmail.com', :name => 'João Milho'}}
    assert_response :redirect
    user = assigns(:user)
    assert_equal 'João Milho', user.name
    assert_equal 'juanmaiz@gmail.com', user.email
  end

  test "should show user" do
    @user = create_user
    assert @user.update_attributes! :email => 'contato@softa.com.br', :password => '123456', :password_confirmation => '123456', :name => 'Juan Maiz'

    get :show, :id => @user.to_param

    assert_response :success
    assert_select '#user_name', /Juan Maiz/
  end
  
  test "should be able to recommend another user" do
    u1 = create_user
    UserSession.create!(u1)
    u2 = create_user
    assert_equal 0, u2.recommended_by.count
    post :recommend, :id => u2.id
    assert_response :success
    assert_equal({:ok => true, :score => 0, :total => 1}.to_json, @response.body)
    assert_equal 1, u2.recommended_by.count    
  end
  
  test "shouldnt be able to recommend yourself" do
    u1 = create_user
    UserSession.create!(u1)
    post :recommend, :id => u1.id
    assert_equal({:ok => false}.to_json, @response.body)
  end
  
  test "should be able to unrecommend another user" do
    u1 = create_user
    UserSession.create!(u1)
    u2 = create_user
    u1.recommend u2
    assert_equal 1, u2.recommended_by.count
    post :unrecommend, :id => u2.id
    assert_response :success
    assert_equal({:ok => true, :score => 0, :total => 0}.to_json, @response.body)
    assert_equal 0, u2.recommended_by.count    
  end
  
end
