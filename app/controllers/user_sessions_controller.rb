class UserSessionsController < InheritedResources::Base
  actions :new, :create, :destroy
  def create
    create!{ profile_path current_user }
  end
  def destroy
    destroy!{ root_path }
  end
end
