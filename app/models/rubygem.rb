class Rubygem < ActiveRecord::Base
  label :name
  scope :by_downloads, order('downloads desc')
end