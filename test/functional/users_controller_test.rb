require File.dirname(__FILE__) + '/../test_helper'

#TODO SHOULD NOT GET NON USERS (ORGS)
class UsersControllerTest < ActionController::TestCase

  setup do
    #setup_octopi_user
  end
  teardown do
    Mocha::Mockery.instance.stubba.unstub_all
  end

  {:new => :get, :edit => :get, :destroy => :delete}.each{|k,v|
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
    @user = create_user :login => 'softa', :email => 'contato@softa.com.br', :password => '123456', :password_confirmation => '123456', :name => 'Juan Maiz'
    
    put :update, :id => @user.to_param, :user => {:email => 'juanmaiz@gmail.com', :name => 'João Milho'}
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

end
