class Recomendation < ActiveRecord::Base
  belongs_to :recomends, :class_name => 'User', :foreign_key => 'recomended_id'
  belongs_to :recomended_by, :class_name => 'User', :foreign_key => 'recomends_id'
end
