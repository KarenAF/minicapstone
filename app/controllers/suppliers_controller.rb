class SuppliersController < ApplicationController

  def index
    @suppliers = Supplier.all
    # render "index.html.erb"
  end

end
