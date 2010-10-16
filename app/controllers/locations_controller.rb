class LocationsController < ApplicationController
  def index
  end

  def city
    @users = User.by_vip.where(:city => params[:city])
  end

  def country
    @users = User.by_vip.where(:country => params[:country])
  end

end