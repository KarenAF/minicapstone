class FruitsController < ApplicationController
  def store
    @fruits = Fruit.all
    render 'store.html.erb'
  end
end


