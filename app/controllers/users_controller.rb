class UsersController < ApplicationController
  def index
    popula
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @sales = @user.sale
  end

  private

  def popula
    User.create(name: "Eduardo Doria", email: "eduardo@zimobi.com.br", admin: false) unless User.any?
  end
end
