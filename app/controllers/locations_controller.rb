class LocationsController < ApplicationController
  
  def index
  end

  def city
    @city = params[:id]
    return redirect_to '/404.html' unless @city
    @users = User.by_vip.where(:city => @city)
  end

  def country
    @country = params[:id]
    return redirect_to '/404.html' unless @country
    @users = User.by_vip.where(:state => @country)
  end


end