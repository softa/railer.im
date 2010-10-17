class HomeController < ApplicationController

  def index
  end
    
  def search
    @users = User.all(:limit => 5)
    @rubygems = Rubygem.all(:limit => 5)
    @companies = Company.all(:limit => 5)
  end

  def live
    last_id = params[:last_id]
    return render :json => [] unless last_id
    users = User.recent.where(["id > ?", last_id]).all

    mapped = users.map{|user|
      html = render_to_string :partial => 'user_row.html.haml', :locals => {:user => user}
      {:id => user.id, :title => user.name, :lat => user.lat, :lng => user.lng, :html => html, :gravatar_id => user.gravatar_id, :login => user.login}
    }.to_json
    return render :json => mapped
    
  end
  # def email
  #   render :text => UserMailer.confirm_email(User.first).body
  # end

  def raise
    raise 'now you can test the error' 
  end
end