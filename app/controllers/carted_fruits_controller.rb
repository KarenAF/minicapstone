class CartedFruitsController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @carted_fruits = CartedFruit.where(user_id: current_user.id, status: 'carted')
    # @carted_fruits = current_user.carted_fruits.where(status:'carted') (More elegant way)
    if @carted_fruits == []
      flash[:warning] = "Your fruit basket is currently empty."
      redirect_to '/fruits'
    else
      render 'index.html.erb'
    end
  end

  def create
    @fruit = Fruit.find_by(id: params[:fruit_id])
    carted_fruit = CartedFruit.new(
      quantity: params[:quantity],
      fruit_id: params[:fruit_id],
      user_id: current_user.id,
      status: "carted",
      order_id: nil
      # subtotal: @fruit.price * params[:quantity].to_i,
      # tax: @fruit.tax * params[:quantity].to_i,
      # total: (@fruit.tax * params[:quantity].to_i) + (@fruit.price * params[:quantity].to_i)
    )
    carted_fruit.save
    session[:cart_count] = nil
    flash[:success] = "Product successfully placed in cart!"
    redirect_to "/carted_fruits"
  end

  def destroy
    @carted_fruit = CartedFruit.find_by(id: params[:id])
    @carted_fruit.status = "removed"
    session[:cart_count] = nil
    @carted_fruit.save
    redirect_to "/carted_fruits"
  end
end