class Company < ActiveRecord::Base
  scope :search, (lambda do |query|
    where("companies.name ~* ?", query)
  end)
end
