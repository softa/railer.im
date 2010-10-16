require File.dirname(__FILE__) + '/../test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    setup_octopi_user
  end
  def teardown
    Mocha::Mockery.instance.stubba.unstub_all
  end

  test "should create user" do
    assert_difference('User.count') do
      assert create_user
    end
  end

  test "should be able to recomend user" do
    setup_octopi_user('ltartari','ltartari@softa.com.br') # needed 'cause it creates 2 users
    u = create_user
    recomended = create_user
    assert_difference('Recomendation.count') do
      u.recomend(recomended)
    end
    assert_equal u.recomends.first, recomended
    assert_equal recomended.recomended_by.first, u
  end

  #TODO ORGANIZATIONS!
  test "should be able to create an user only with login" do
    user = User.create(:login => 'softa')
    assert_equal 'Softa', user.name
    assert_equal 'contato@softa.com.br', user.email
    assert_equal 'Porto Alegre / RS - Brasil', user.location
  end
  
end
