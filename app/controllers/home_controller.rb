class HomeController < ApplicationController

  def index
  end
  
  def email
    render :text => UserMailer.confirm_email(User.first).body
  end
  
  def search
    @users = User.all(:limit => 5)
    @rubygems = Rubygem.all(:limit => 5)
    @companies = Company.all(:limit => 5)
  end
   
end