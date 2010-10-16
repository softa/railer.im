class Recomendation < ActiveRecord::Base
  belongs_to :recomends, :class_name => 'User', :foreign_key => 'recomends_id'
  belongs_to :recomended, :class_name => 'User', :foreign_key => 'recomended_id'
end
