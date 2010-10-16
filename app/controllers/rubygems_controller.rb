class RubygemsController < InheritedResources::Base
  def collection
    @rubygems ||= end_of_association_chain.by_downloads.paginate(:page => params[:page], :per_page => 15)
  end
  
end