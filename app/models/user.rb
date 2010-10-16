class User < ActiveRecord::Base
  belongs_to :company
  has_many :recomendations_made, :class_name => 'Recomendation', :foreign_key => 'recomends_id'
  has_many :recomendations_received, :class_name => 'Recomendation', :foreign_key => 'recomended_id'
  has_many :recomends, :class_name => 'User', :through => :recomendations_made
  has_many :recomended, :class_name => 'User', :through => :recomendations_received
  has_many :repositories
  has_one :twitter_profile

  acts_as_authentic
end

