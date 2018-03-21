class CartsController < ApplicationController
  def checkout
    cart = Cart.find(params[:id])
    cart.checkout
    current_user.update(current_cart: nil)
    redirect_to cart
  end
end
