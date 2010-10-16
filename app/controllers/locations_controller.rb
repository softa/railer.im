class LocationsController < ApplicationController
  def index
  end

  def city
    @city = params[:id]
    @users = User.by_vip.where(:city => @city)
  end

  def country
    @country = params[:id]
    @users = User.by_vip.where(:state => @country)
  end

end