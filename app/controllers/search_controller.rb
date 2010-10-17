class SearchController < ApplicationController
  actions :index
  respond_to :json

  def index
    @results = Search.results_for(params[:query])
    render :json => @results.map.to_json
  end
end
