class Repository < ActiveRecord::Base
  belongs_to :user
  has_many :dependencies
end
