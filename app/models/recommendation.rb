class Recommendation < ActiveRecord::Base
  belongs_to :recommends, :class_name => 'User', :foreign_key => 'recommended_id'
  belongs_to :recommended_by, :class_name => 'User', :foreign_key => 'recommends_id'
end
