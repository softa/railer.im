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
    @rubygem = Rubygem.create :name => 'rails'  
    get :show, :id => @rubygem.to_param
    assert_response :success
    assert_select '#gem_name', 'rails'
  end

  {:new => :get, :edit => :get, :create => :post, :update => :put, :destroy => :delete}.each{|k,v|
    test "should not get #{k}" do
      assert_raises AbstractController::ActionNotFound do
        send(v,k, :id => 123)
      end
    end
  }
end