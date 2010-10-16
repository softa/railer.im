class UsersController < ApplicationController
  actions :show, :create, :update
  respond_to :html, :json
end