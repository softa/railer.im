class RubygemsController < ApplicationController

  actions :index, :show

  def index
    @rubygems = Rubygem.by_downloads.paginate(:page => params[:page], :per_page => 15)
  end

end