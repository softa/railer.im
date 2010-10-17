require File.dirname(__FILE__) + '/../test_helper'

class UserSimilarityTest < ActiveSupport::TestCase
  def setup
    create_user.update_attributes :name => 'Diogo Biazus', :login => 'diogob', :email => 'diogob@gmail.com', :city => 'Porto Alegre'
    create_user.update_attributes :name => 'Juan Maiz Lulkin Flores da Cunha', :login => 'softa', :email => 'juanmaiz@gmail.com', :province => 'Rio Grande do Sul'
    create_user.update_attributes :name => 'Pedro Axelrud', :login => 'pedroaxl', :email => 'pedroaxl@gmail.com', :province => 'Sao Paulo', :city => 'Sao Paulo'
    create_user.update_attributes :name => 'Leonardo Tartari', :login => 'ltartari', :email => 'ltartari@gmail.com', :city => 'Porte Alegre', :province => 'Rie Grande do Sul'
    create_user.update_attributes :name => 'Felipe Benites Cabral', :login => 'cabral', :email => 'felipe.benites@gmail.com'
  end

  test "should be able to search by similarity of name, email and login" do
    assert_equal 5, User.count
    # 100% match
    Search.set_similarity_threshold(1)
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
    Search.set_similarity_threshold(0.5)
    assert_equal 1, User.by_similarity('diogo').count
    assert_equal 1, User.by_similarity('pedro').count
    assert_equal 1, User.by_similarity('juanmaiz').count
    assert_equal 1, User.by_similarity('leotartari').count
  end

  test "should order by similarity" do
    User.where("login <> 'pedroaxl'").destroy_all
    create_user.update_attributes :name => 'João Pedro', :login => 'jpedro', :email => 'jpedro@gmail.com'
    create_user.update_attributes :name => 'Seu Pedro', :login => 'spedro', :email => 'spedro@gmail.com'
    Search.set_similarity_threshold(0.5)
    results = User.by_similarity('pedroaxl@gmail.com')
    assert_equal 3, results.count
    assert_equal User.find_by_login('pedroaxl'), results.first

    results = User.by_similarity('spedro@gmail.com')
    assert_equal 3, results.count
    assert_equal User.find_by_login('spedro'), results.first

    results = User.by_similarity('jpedro@gmail.com')
    assert_equal 3, results.count
    assert_equal User.find_by_login('jpedro'), results.first
  end

  test "should be safe agains injections" do
    Search.set_similarity_threshold(0.5)
    results = User.by_similarity(%{pedroaxl@gmail.com'; DELETE FROM users;})
    assert_equal 5, User.count
  end

  test "scope rank_by_similarity should return type, key and rank" do
    Search.set_similarity_threshold(1)
    assert_equal 1, User.rank_by_similarity('Diogo Biazus').count
    u = User.rank_by_similarity('Diogo Biazus').first
    assert_equal ['user', 'diogob', '1'], [u.entry_type, u.key, u.rank]
  end

  test "scope by_location_similarity should match city or province" do
    Search.set_similarity_threshold(0.5)
    assert_equal 2, User.rank_by_location_similarity('Porto Alegre').count
    u = User.rank_by_location_similarity('Porto Alegre').first
    assert_equal ['location', 'Porto Alegre', '1'], [u.entry_type, u.key, u.rank]
  end
end
