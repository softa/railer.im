class UsersController < ApplicationController
  actions :show, :create, :update
  respond_to :html, :json

  rescue_from ActiveRecord::RecordNotFound, :with => lambda{
    return render :action => :no_such_user if current_user
    @login = params[:id]
    attemps = 0
    begin
      user = Octopi::User.find @login
      render :action => :new
    rescue Octopi::NotFound => e
      render :action => :new_on_github
    rescue Octopi::APIError => e
      # if theres any error in github api, we'll retry 5 times.
      attemps += 1
      sleep 2
      if attemps < 5
        retry
      else
        render :action => :new_on_github
      end
    end
  }

  #TODO q tal?
  #rescue_from ActionController::MethodNotAllowed, :with => lambda{ return redirect_to root_path }

end