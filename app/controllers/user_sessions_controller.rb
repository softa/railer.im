class UserSessionsController < ApplicationController

  actions :create, :destroy
  respond_to :json
 
  def destroy
    destroy!{ return redirect_to :back }
  end

protected

  def user_session; end

end