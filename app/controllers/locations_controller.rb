class LocationsController < ApplicationController
  
  def index
  end

  def city
    @city = params[:id]
    return redirect_to '/404.html' unless @city
    @users = User.by_vip.where(:city => @city)
    @title = " · #{@city}"
  end

  def country
    @country_code = params[:id]
    return redirect_to '/404.html' unless @country_code
    @country = COUNTRY_CODES[@country_code]
    return redirect_to '/404.html' unless @country
    @users = User.by_vip.where(:country_code => @country_code)
    @title = " · #{@country}"
  end

end