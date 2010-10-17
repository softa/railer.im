# a view
class City < ActiveRecord::Base
  scope :from, proc{|cc| where(:country_code => cc)}
end