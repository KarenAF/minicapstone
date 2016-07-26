class OrdersController < ApplicationController
  def create
    @carted_fruit = CartedFruit.where(user_id: current_user.id, status: "carted")
    @carted_fruit.each do |carted_fruit|
      
    @fruit = Fruit.find_by(id: params[:fruit_id])
    order = Order.new(
      quantity: params[:quantity],
      fruit_id: params[:fruit_id],
      user_id: current_user.id,
      subtotal: @fruit.price * params[:quantity].to_i,
      tax: @fruit.tax * params[:quantity].to_i,
      total: (@fruit.tax * params[:quantity].to_i) + (@fruit.price * params[:quantity].to_i)
    )
    order.save
    flash[:success] = "Product successfully placed in cart!"
    redirect_to "/orders/#{order.id}"
  end

  def show
    @order = Order.find_by(id: params[:id])
    flash[:success] = "Order successfully placed!"
    render 'show.html.erb'
  end
end
