class Company < ActiveRecord::Base
  label :name
  #def to_param
  #  name
  #end
  has_many :users
  scope :search, (lambda do |query|
    where("companies.name ~* ?", query)
  end)

  scope :by_similarity, (lambda do |query|
    where("(name % ?)", query).order("similarity(name, quote_literal('#{query}')) DESC")
  end)

  scope :rank_by_similarity, (lambda do |query|
    by_similarity(query).select("'company' AS entry_type, name AS key, name AS label, NULL::text as gravatar_id, similarity(name, quote_literal('#{query}')) AS rank")
  end)

end
