class User < ActiveRecord::Base
  label :name, :login
  belongs_to :company
  has_many :recomendations_made, :class_name => 'Recomendation', :foreign_key => 'recomends_id'
  has_many :recomendations_received, :class_name => 'Recomendation', :foreign_key => 'recomended_id'
  has_many :recomends, :class_name => 'User', :through => :recomendations_made
  has_many :recomended_by, :class_name => 'User', :through => :recomendations_received
  has_many :repositories
  has_one :twitter_profile

  acts_as_authentic

  def recomend(recomended_user)
    recomendations_made.create(:recomended_id => recomended_user.id)
  end
end

