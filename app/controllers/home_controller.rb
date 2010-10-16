class HomeController < ApplicationController

  def index
  end
  
  def email
    Mailer.create_welcome(current_client.users.first).body
  end
   
end