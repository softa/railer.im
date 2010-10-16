class Dependency < ActiveRecord::Base
  belongs_to :repository
  belongs_to :rubygem  
  serialize :environments
end