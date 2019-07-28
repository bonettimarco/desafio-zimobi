class SalesController < ApplicationController
  def create
    @sale = User.find(params[:user_id]).build_sale(sale_params) if User.find(params[:user_id])
    if @sale.save
      flash[:success] = "Anúncio criado"
      redirect_to root_url
    else
      flash[:success] = "Não foi possível criar o anúncio"
      recirect_to root_url
    end
  end

  def new
    @sale = Sale.new
    @user = User.find(params[:usuario_id])
  end

  def show
    @sale = Sale.find(params[:id])
  end

  def edit
    @sale = Sale.find(params[:id])
    @user = @sale.user
  end

  def update
    @sale = Sale.find_by(user_id: params[:user_id])
   if @sale.update(sale_params)
     flash[:success] = "Anúncio criado"
     redirect_to root_url
   else
     flash[:success] = "Não foi possível criar o anúncio"
     recirect_to root_url
   end
  end

  private

  def sale_params
    params.require(:sale).permit(:titulo, :descricao, :valor, :historia, :user_id, :image)
  end
end