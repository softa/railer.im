class UserSessionsController < InheritedResources::Base
  actions :new, :create, :destroy
  respond_to :json
end
