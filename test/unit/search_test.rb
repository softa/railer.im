require 'test_helper'

class SearchTest < ActiveSupport::TestCase
  test "best match should return entry_type and key" do
    create_user.update_attributes :name => 'Pedro Axelrud', :login => 'pedroaxl', :email => 'pedroaxl@gmail.com'
    create_user.update_attributes :name => 'João Pedro', :login => 'jpedro', :email => 'jpedro@gmail.com'
    create_user.update_attributes :name => 'Seu Pedro', :login => 'spedro', :email => 'spedro@gmail.com'
    User.set_similarity_threshold(0.5)
  end
end
