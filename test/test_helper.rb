ENV["RAILS_ENV"] = "test"
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.(yml|csv) for all tests in alphabetical order.
  #
  # Note: You'll currently still have to declare fixtures explicitly in integration tests
  # -- they do not yet inherit this setting
  fixtures = false

  # Gets the next id for model
  def get_id(model)
    id = model.maximum(:id)
    id.nil? ? 1 : id + 1
  end

  # Creates a test user with default values
  def create_user(params = {})
    id = get_id(User)
    defaults = {:name => "test user #{id}", :email => "test_user#{id}@railer.im", :company_name => "co test", :public_repo_count => 1, :blog => 'http://blog.user.com', :github_id => 'repo-1212', :public_gist_count => 1, :login => "test_user_#{id}",
    :password => 'testing_password_123', :password_confirmation => 'testing_password_123' }
    defaults.merge(params)
    User.create!(defaults)
  end
end
