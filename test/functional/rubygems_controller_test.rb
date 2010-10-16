require File.dirname(__FILE__) + '/../test_helper'

class RubygemsControllerTest < ActionController::TestCase
  setup do
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rubygems)
  end

  test "should show rubygem" do
    @rubygem = create_rubygem :name => 'rails'  
    get :show, :id => @rubygem.to_param
    assert_response :success
    assert_select '#gem_name', 'rails'
  end

  test "should assign distinct gem users" do
    u = create_user
    g = create_rubygem
    create_dependency(:rubygem => g, :repository => create_repository(:user => u))
    create_dependency(:rubygem => g, :repository => create_repository(:user => u))
    get :show, :id => g.to_param
    assert_response :success
    assert_equal [u], assigns(:rubygem).users
    assert_equal 1, assigns(:rubygem).users.size
  end

  {:new => :get, :edit => :get, :create => :post, :update => :put, :destroy => :delete}.each{|k,v|
    test "should not get #{k}" do
      assert_raises AbstractController::ActionNotFound do
        send(v,k, :id => 123)
      end
    end
  }
end
