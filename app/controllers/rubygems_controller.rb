class RubygemsController < ApplicationController

  actions :index, :show

  def index
    @rubygems = Rubygem.by_downloads.paginate(:page => params[:page], :per_page => 15)
  end
  def fight
    @a = Rubygem.find params[:a]
    @b = Rubygem.find params[:b]
  end

end