class UserSessionsController < ApplicationController

  actions :create, :destroy
  respond_to :json
  respond_to :html, :only => [:token_auth]
 
  def destroy
    destroy!{ return redirect_to :back }
  rescue
    return redirect_to :back
  end

  def token_auth
    @user = User.find_using_perishable_token(params[:token])
    if params[:token] and @user
      @user.activate! unless @user.active?
      @user_session = UserSession.create! @user
      session['define_password'] = true
      return redirect_to(profile_path(@user))
    else
      flash[:notice] = "Authentications token not valid."
      return redirect_to root_path
    end
  end

protected

  def user_session; end

end