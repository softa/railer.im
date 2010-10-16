class UserSessionsController < ApplicationController

  actions :create, :destroy
  respond_to :json
 
protected

  def user_session; end

end