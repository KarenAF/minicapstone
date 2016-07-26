class CartedFruitsController < ApplicationController
  def index
    @carted_fruits = CartedFruit.where(user_id: current_user.id, status: 'carted')
    render 'index.html.erb'
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
    flash[:success] = "Product successfully placed in cart!"
    redirect_to "/carted_fruits"
  end
end