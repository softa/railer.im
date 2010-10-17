require 'test_helper'

class SearchTest < ActiveSupport::TestCase
  test "query should return entry_type, key, label, gravatar_id" do
    create_user.update_attributes :name => 'Pedro Axelrud', :login => 'pedroaxl', :email => 'pedroaxl@gmail.com', :gravatar_id => '123'
    create_user.update_attributes :name => 'João Pedro', :login => 'jpedro', :email => 'jpedro@gmail.com'
    create_user.update_attributes :name => 'Seu Pedro', :login => 'spedro', :email => 'spedro@gmail.com'
    Search.set_similarity_threshold(0.5)
    result = Search.results_for('pedroaxl@gmail.com')
    assert_equal({'entry_type' => 'user', 'key' => 'pedroaxl', 'label' => 'Pedro Axelrud', 'gravatar_id' => '123', 'rank' => '1'}, result[:users][0])
    assert_equal 5, result.size
    assert_equal 3, result[:users].size
  end
end
