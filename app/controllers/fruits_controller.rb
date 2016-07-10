class FruitsController < ApplicationController
  def store
    @fruits = Fruit.all
    render 'store.html.erb'
  end

  def index
    @fruits = Fruit.all
    render 'index.html.erb'
  end
end


