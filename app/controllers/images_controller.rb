class ImagesController < ApplicationController
    def new
      @fruit = Fruit.find_by(id: params[:fruit_id])
      render 'new.html.erb'
    end

    def create
      image = Image.create(
        url: params[:url],
        fruit_id: params[:fruit_id],
      )
      image.save
      flash[:success] = "Image successfully saved!"
      redirect_to "/fruits/#{params[:fruit_id]}"
    end

    def edit
      @fruit = Fruit.find_by(id: params[:fruit_id])
      render 'edit.html.erb'
    end

    def update
      @fruit = Fruit.find_by(id: params[:fruit_id])
      @fruit.images[0].update(
        url: params['url'],
        fruit_id: params[:fruit_id]
      )
      @fruit.images[0].save
      flash[:success] = "first image successfully updated"
      redirect_to "/fruits/#{params[:fruit_id]}"
    end
end
