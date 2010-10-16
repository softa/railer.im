class UsersController < ApplicationController
  actions :show, :create, :update
  respond_to :html, :json
#TODO IMPORTANTE quando buscar um usuário inexistente, páginca com "é você?"
end