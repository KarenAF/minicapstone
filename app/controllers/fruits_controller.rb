class FruitsController < ApplicationController

  def index
    if params[:sort] == "price"
      @fruits = Fruit.order(:price)
    elsif params[:sort] == "supplier_id"
      @fruits = Fruit.order(:supplier_id).all
    elsif params[:sort]
     sort_attribute = params[:sort]
      @fruits = Fruit.order("lower(#{sort_attribute})").all      
    elsif params[:filter] == "per_pound"
      @fruits = Fruit.where("price >= ?", 4)
    elsif params[:filter] == "per_item"
      @fruits = Fruit.where("price < ?", 4)
    elsif params[:search_terms]
      @fruits = Fruit.where("name Like?", "%#{params[:search_terms]}%")
    elsif params[:category]
      @fruits = Category.find_by(name: params[:category]).fruits
    else
      @fruits = Fruit.all.sort_by { |k, v| k[:name].downcase}      
    end    
      render 'index.html.erb'
  end

  def random
    @fruit = Fruit.offset(rand(Fruit.count)).first
    render 'show.html.erb'
  end

  def new
    render 'new.html.erb'
  end

  def create
    fruit = Fruit.new(
      name: params['name'],
      price: params['price'],
      description: params['description'],
      supplier_id: params['supplier_id'],
      availability: true
    )
    fruit.save
    image = Image.create(
      url: params[:url],
      fruit_id: params[:fruit_id],
    )
    image.save
    flash[:success] = "#{fruit.name} successfully added"
    redirect_to '/fruits'
  end

  def run_search
    @fruits = Fruit.where("name LIKE ?", "%#{params[search_terms]}")
    render 'index.html.erb'
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
      description: params['description'],
      supplier_id: params['supplier_id'],
      availability: params['availability']
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


