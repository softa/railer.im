require File.dirname(__FILE__) + '/../test_helper'

require 'gemfile_eval'

class GemfileEvalTest < ActiveSupport::TestCase

  test "should eval Gemfile1" do
    result = GemfileEval.eval File.read("#{Rails.root}/test/fixtures/Gemfile1")
    assert_equal 19, result.gems.size
    assert_equal ['rails','3.0.0',[:all]], result.gems.shift
    assert_equal ['haml',nil,[:all]], result.gems.shift
    assert_equal ['inherited_resources','1.1.2',[:all]], result.gems.shift
    assert_equal ['labelize','0.1.4',[:all]], result.gems.shift
    assert_equal ['resque',nil,[:all]], result.gems.shift
    assert_equal ['octopi',nil,[:all]], result.gems.shift
    assert_equal ['gravtastic','3.0.0',[:all]], result.gems.shift
    assert_equal ['hpricot',nil,[:all]], result.gems.shift
    assert_equal ['twitter',nil,[:all]], result.gems.shift
    assert_equal ['compass',nil,[:all]], result.gems.shift
    assert_equal ['authlogic',nil,[:all]], result.gems.shift
    assert_equal ['geokit',nil,[:all]], result.gems.shift
    assert_equal ['wirble',nil,[:all]], result.gems.shift
    assert_equal ['jquery-rails',nil,[:all]], result.gems.shift
    assert_equal ['mongrel',nil,[:all]], result.gems.shift
    assert_equal ['will_paginate',nil,[:all]], result.gems.shift
    assert_equal ['pg',nil,[:all]], result.gems.shift
    assert_equal ['mocha',nil,[:test]], result.gems.shift
    assert_equal ['unicorn',nil,[:all]], result.gems.shift
  end

  test "should eval Gemfile2" do
    result = GemfileEval.eval File.read("#{Rails.root}/test/fixtures/Gemfile2")
    assert_equal 5, result.gems.size
    assert_equal ['rails','3.0.0',[:all]], result.gems.shift
    assert_equal ['pg',nil,[:all]], result.gems.shift
    assert_equal ['mocha',nil,[:test,:production]], result.gems.shift
    assert_equal ['foo',nil,[:foo,:bar,:baz]], result.gems.shift
    assert_equal ['unicorn',nil,[:all]], result.gems.shift
  end

  test "should not eval Gemfile3" do
    result = GemfileEval.eval File.read("#{Rails.root}/test/fixtures/Gemfile3")
    assert_equal 0, result.gems.size
  end

end