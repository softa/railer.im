class UsersController < ApplicationController
  actions :show, :edit, :create, :update
  respond_to :html, :json

  def update
    @user = User.find(params[:id])
    puts UserSession.find(@user).inspect
    raise "NO" unless me?
    update! do |s,f|
      s.json{
        session['define_password'] = false if( session['define_password'] && params[:user][:password] )
        return render :json => {:ok => true}.to_json
      } 
    end
  end

  def show
    show!{
      @password_modal = session['define_password'] && me?
    }
  rescue ActiveRecord::RecordNotFound => e
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
  end

  helper_method :me?
  def me?
    @me = current_user == @user 
  end

  def resend_activation_email
    @user = User.find params[:id]
    unless @user.active?
      @user.send_activation_email 
      flash[:success] = "An activation email has been resent. Please verify your mailbox. If you're having problems, please <a href='mailto:contact@railer.im'>contact us</a>."
    end
    redirect_to root_path
  end

  def send_reset_email
    @user = User.find_by_email params[:user][:email]
    if @user
      @user.send_reset_email 
      flash[:success] = "A password reset email has been sent. Please verify your mailbox. If you're having problems, please <a href='mailto:contact@railer.im'>contact us</a>."
    else
      flash[:failure] = "Email not found."
    end
    redirect_to :back
  end

  #TODO q tal?
  #rescue_from ActionController::MethodNotAllowed, :with => lambda{ return redirect_to root_path }

end