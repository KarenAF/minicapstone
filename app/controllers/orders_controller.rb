class OrdersController < ApplicationController
  def create
    @carted_fruits = CartedFruit.where(user_id: current_user.id, status: "carted")

    order_subtotal = 0
    order_tax = 0
    order_total = 0

    @carted_fruits.each do |carted_fruit|
      fruit = Fruit.find_by(id: carted_fruit.fruit_id)
      subtotal = fruit.price * carted_fruit.quantity.to_i
      order_subtotal += subtotal
      tax = subtotal * 0.09
      order_tax += tax
      total = subtotal + tax
      order_total += total
    end

      order = Order.new(
        user_id: current_user.id,
        subtotal: order_subtotal,
        tax: order_tax,
        total: order_total
      )
      order.save

      @carted_fruits.each do |carted_fruit|
        carted_fruit.order_id = order.id
        carted_fruit.status = "purchased"
        carted_fruit.save
      end

    flash[:success] = "Order successfully placed!"
    redirect_to "/orders/#{order.id}"
  end

  def show
    @order = Order.find_by(id: params[:id])
    flash[:success] = "Order successfully placed!"
    render 'show.html.erb'
  end
end
