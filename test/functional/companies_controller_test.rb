require File.dirname(__FILE__) + '/../test_helper'

class CompaniesControllerTest < ActionController::TestCase
  setup do
    @company = create_company
  end

  test "should show company" do
    get :show, :id => @company.to_param
    assert_response :success
  end
end