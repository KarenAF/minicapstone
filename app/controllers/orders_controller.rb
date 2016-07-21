class OrdersController < ApplicationController
  def new
    render 'new.html.erb'
  end

  def create
    order = Order.new(
      quantity: params[:quantity],
      user_id: current_user.id
    )
    order.save
    redirect_to "/orders/#{order.id}"
  end

  def show
    @order = Order.find_by(id: params[:id])
    render 'show.html.erb'
  end
end
