class UserSessionsController < InheritedResources::Base
  actions :new, :create, :destroy
  respond_to :json
  
  def new
    new! do |format|
      format.html {render :layout => false}
    end
  end
  
  # def create
  #   create!{ profile_path current_user }
  # end
  
  def destroy
    destroy!{ root_path }
  end
end
