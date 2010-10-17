class Team < ActiveRecord::Base

  label :name, :team_home
  has_many :team_memberships
  has_many :users, :through => :team_memberships

  scope :by_similarity, (lambda do |query|
    where("(name % ?)", query).order("similarity(name, quote_literal('#{query}')) DESC")
  end)

  scope :rank_by_similarity, (lambda do |query|
    by_similarity(query).select("'team' AS entry_type, team_home AS key, name AS label, NULL::text as gravatar_id, similarity(name, quote_literal('#{query}')) AS rank")
  end)

  def url
    "http://railsrumble.com/teams/#{team_home}"
  end

  serialize :where
  serialize :how

  def to_param
    team_home
  end
  
end
