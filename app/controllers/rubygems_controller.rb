class RubygemsController < ApplicationController

  actions :index, :show

  def show
    show!{@title = " · #{@rubygem.name} · Gem"}
  end
  def index
    @title = " · Gems"
    @rubygems = Rubygem.by_downloads.paginate(:page => params[:page], :per_page => 15)
  end
  def fight
    @a = Rubygem.find params[:a]
    @b = Rubygem.find params[:b]
    @title = " · #{@a.name} vs #{@b.name}"
  end

end