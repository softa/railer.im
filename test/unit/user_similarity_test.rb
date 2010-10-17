require File.dirname(__FILE__) + '/../test_helper'

class UserSimilarityTest < ActiveSupport::TestCase
  def setup
    create_user.update_attributes :name => 'Diogo Biazus', :login => 'diogob', :email => 'diogob@gmail.com'
    create_user.update_attributes :name => 'Juan Maiz Lulkin Flores da Cunha', :login => 'softa', :email => 'juanmaiz@gmail.com'
    create_user.update_attributes :name => 'Pedro Axelrud', :login => 'pedroaxl', :email => 'pedroaxl@gmail.com'
    create_user.update_attributes :name => 'Leonardo Tartari', :login => 'ltartari', :email => 'ltartari@gmail.com'
    create_user.update_attributes :name => 'Felipe Benites Cabral', :login => 'cabral', :email => 'felipe.benites@gmail.com'
  end

  test "should be able to search by similarity of name, email and login" do
    assert_equal 5, User.count
    # 100% match
    User.set_similarity_threshold(1)
    assert_equal 1, User.by_similarity('Diogo Biazus').count

    # Should be case insensitive
    assert_equal 1, User.by_similarity('diogo biazus').count

    # spaces are relevant
    assert_equal 0, User.by_similarity('diogobiazus').count

    # "_", "-", "." are quivalent to " " 
    assert_equal 1, User.by_similarity('diogo-biazus').count
    assert_equal 1, User.by_similarity('diogo_biazus').count
    assert_equal 1, User.by_similarity('diogo.biazus').count

    # matches against email or login are also valid
    assert_equal 1, User.by_similarity('diogob').count
    assert_equal 1, User.by_similarity('diogob@gmail.com').count

  end

  test "should match partial" do
    # partial match
    User.set_similarity_threshold(0.5)
    assert_equal 1, User.by_similarity('diogo').count
    assert_equal 1, User.by_similarity('pedro').count
    assert_equal 1, User.by_similarity('juanmaiz').count
    assert_equal 1, User.by_similarity('leotartari').count
  end
end
