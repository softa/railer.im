class UserSessionsController < ApplicationController
  actions :new, :create, :destroy
  respond_to :json
end
