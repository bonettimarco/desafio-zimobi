class UsersController < ApplicationController
  def index
    popula unless User.any?
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @sales = @user.sale
  end

  def new
    popula
    redirect_to users_path
  end

  private

  def popula
    FactoryBot.create(:user)
  end
end
