class FruitsController < ApplicationController
  def index
    @fruits = Fruit.all.sort
    render 'index.html.erb'
  end

  def new
    render 'new.html.erb'
  end

  def show
    @fruit = Fruit.find_by(id: params['id'])
    render 'show.html.erb'
  end

  def create
    fruit = Fruit.new(
      name: params['name'],
      price: params['price'],
      image: params['image'],
      description: params['description']
    )
    fruit.save
    render 'create.html.erb'
  end

  def edit
    @fruit = Fruit.find_by(id: params['id'])
    render 'edit.html.erb'
  end

  def update
    @fruit = Fruit.find_by(id: params['id'])
    @fruit.update(
      name: params['name'],
      price: params['price'],
      image: params['image'],
      description: params['description']
    )
    @fruit.save
    render 'update.html.erb'
  end

  def destroy
    @fruit = Fruit.find_by(id: params[:id])
    @fruit.destroy
    render 'destroy.html.erb'
  end
end


