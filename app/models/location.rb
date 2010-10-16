# This is a view
class Location < ActiveRecord::Base
  scope :biggest, order('total desc')
  scope :ten, limit(10)
end
