class FruitsController < ApplicationController
  def index
    @fruits = Fruit.all.sort
    render 'index.html.erb'
  end

  def new
    render 'new.html.erb'
  end

  def create
    fruit = Fruit.new(
      name: params['name'],
      price: params['price'],
      image: params['image'],
      description: params['description']
    )
    fruit.save
    flash[:success] = "#{fruit.name} successfully added"
    redirect_to '/fruits'
  end

  def show
    @fruit = Fruit.find_by(id: params['id'])
    render 'show.html.erb'
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
    flash[:success] = "#{@fruit.name} successfully updated"
    redirect_to "/fruits/#{@fruit.id}"
  end

  def destroy
    @fruit = Fruit.find_by(id: params[:id])
    @fruit.destroy
    redirect_to '/fruits'
  end
end


