class UserSessionsController < ApplicationController

  actions :create, :destroy
  respond_to :json
 
  def destroy
    
  end
protected

  def user_session; end

end