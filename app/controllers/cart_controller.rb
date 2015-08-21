class CartController < ApplicationController


  def index
    #If cart is present then add to existing cart and if its a new cart equals an empty hash
    if session[:cart] then
      @cart = session[:cart]
    else
      @cart = {}
    end
  end

  # if the product has already been added to the cart, plus the value or just set it to 1
  def add

    id = params[:id]

    if session[:cart] then
      cart = session[:cart]
    else
      session[:cart] = {}
      cart = session[:cart]
    end

    if cart[id] then
      cart[id] = cart[id] + 1
    else
      cart[id] = 1
    end
    redirect_to :action => :index
  end

  # Clear the cart
  def clearcart
    session[:cart] = nil
    redirect_to "cart_path"
  end

end
