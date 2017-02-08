class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  before_action :calculate_cart_count

  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end
  helper_method :current_user

  def authenticate_user!
    redirect_to '/login' unless current_user
  end

  def authenticate_admin! # basically, this is saying: if you ever run this, I'm going to bounce you out, unless you're an admin.
    redirect_to '/' unless current_user && current_user.admin 
  end

  def calculate_cart_count
    if current_user
      if session[:cart_count] 
        @cart_count = session[:cart_count]
      else
        @cart_count = current_user.carted_fruits.where(status:'carted').count
        session[:cart_count] = @cart_count
      end
      # any time you add something to the cart, you should kill your cookie. So that it can refresh and invalidate the "cache" and calcualte it again.
    else
      @cart_count = 0
    end

    # if current_user
    #   @cart_count = current_user.carted_fruits.where(status: 'carted').count
    # else
    #   @cart_count = 0
    # end
  end
end
