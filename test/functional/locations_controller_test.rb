require File.dirname(__FILE__) + '/../test_helper'

class LocationsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get city" do
    get :city, :id => 'Porto Alegre'
    assert_response :success
  end

  test "should get country" do
    get :country, :id => 'Brazil'
    assert_response :success
  end

  test "should not get city" do
    get :city, :id => nil
    assert_response :redirect
    assert_redirected_to '/404.html'
  end

  test "should not get country" do
    get :country, :id => nil
    assert_response :redirect
    assert_redirected_to '/404.html'
  end

end