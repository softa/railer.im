require 'test_helper'

class SearchControllerTest < ActionController::TestCase
  test "index should return ajax with search.results_for" do
    create_user.update_attributes :name => 'Pedro Axelrud', :login => 'pedroaxl', :email => 'pedroaxl@gmail.com', :gravatar_id => '123'
    create_user.update_attributes :name => 'João Pedro', :login => 'jpedro', :email => 'jpedro@gmail.com'
    create_user.update_attributes :name => 'Seu Pedro', :login => 'spedro', :email => 'spedro@gmail.com'
    expected_json = Search.results_for('pedroaxl@gmail.com').to_json
    get :index, :format => :json, :query => 'pedroaxl@gmail.com'
    assert_response :success
    assert_equal 4, assigns(:results).size
    assert_equal 3, assigns(:results)["users"].size
    assert_equal expected_json, @response.body
  end
end
