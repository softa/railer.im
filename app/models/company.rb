class Company < ActiveRecord::Base
  label :name
  #def to_param
  #  name
  #end
  has_many :users
  scope :search, (lambda do |query|
    where("companies.name ~* ?", query)
  end)

end
