require File.dirname(__FILE__) + '/../test_helper'

require 'gemfile_worker'
class GemfileWorkerTest < ActiveSupport::TestCase

  def teardown
    Mocha::Mockery.instance.stubba.unstub_all
  end

  test "should perform 1" do
    gemfile = File.read("#{Rails.root}/test/fixtures/Gemfile1")
    URI::HTTP.any_instance.stubs(:open).returns(OpenStruct.new({:read => gemfile}))

    repo = create_repository
    GemfileWorker.perform repo.id
    repo.reload
    assert_equal 19, repo.dependencies.count
    
    assert_equal 'rails', repo.dependencies.first.rubygem.name
    assert_equal '3.0.0', repo.dependencies.first.version
    assert_equal [:all], repo.dependencies.first.environments
  end

  test "should perform 2" do
    gemfile = File.read("#{Rails.root}/test/fixtures/Gemfile2")
    URI::HTTP.any_instance.stubs(:open).returns(OpenStruct.new({:read => gemfile}))

    repo = create_repository
    GemfileWorker.perform repo.id
    repo.reload
    assert_equal 5, repo.dependencies.count
    
    rubygem = Rubygem.find_by_name 'foo'
    foo = repo.dependencies.find_by_rubygem_id rubygem.id
    assert_equal 'foo', foo.rubygem.name
    assert_equal nil, foo.version
    assert_equal [:foo,:bar,:baz], foo.environments
  end

  test "should not perform 3" do
    gemfile = File.read("#{Rails.root}/test/fixtures/Gemfile3")
    URI::HTTP.any_instance.stubs(:open).returns(OpenStruct.new({:read => gemfile}))

    repo = create_repository
    GemfileWorker.perform repo.id
    repo.reload
    assert_equal 0, repo.dependencies.count
  end

end