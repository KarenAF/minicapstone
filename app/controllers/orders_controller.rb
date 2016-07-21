class OrdersController < ApplicationController
  def new
    render 'new.html.erb'
  end

  def create
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
    redirect_to "/orders/#{order.id}"
  end

  def show
    @order = Order.find_by(id: params[:id])
    render 'show.html.erb'
  end
end
