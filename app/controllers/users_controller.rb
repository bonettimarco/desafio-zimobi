class UsersController < ApplicationController
  def index
    User.create(name: "Eduardo Doria", email: "eduardo@zimobi.com.br", admin: false) unless User.any?
    @users = User.all
  end
end
