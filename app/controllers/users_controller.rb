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
      @title = " · #{@user.name} · Railer"
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
      if @user.last_request_at <= Time.now - 1.day
        @user.send_activation_email 
        flash[:success] = "The activation email was resent. Please verify your mailbox. If you're having problems, please <a href='mailto:contact@railer.im'>contact us</a>."
      else
        flash[:notice] = "We already sent you an activation email recently. If you're having problems, please <a href='mailto:contact@railer.im'>contact us</a>."
      end
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
  
  def recommend
    begin
      recommended = User.find params[:id]
      raise "You cannot recommend yourself" if recommended == current_user
      current_user.recommend recommended
      return render :json => {:ok => true, :total => recommended.recommended_by.count, :score => recommended.score}.to_json
    rescue
      return render :json => {:ok => false}
    end
  end

  def unrecommend
    begin
      unrecommended = User.find params[:id]
      current_user.unrecommend unrecommended
      return render :json => {:ok => true, :total => unrecommended.recommended_by.count, :score => unrecommended.score}.to_json
    rescue
      return render :json => {:ok => false}
    end
  end

end