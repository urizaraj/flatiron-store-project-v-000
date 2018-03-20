class LineItemsController < ApplicationController
  def create
    if current_user.current_cart
      current_user.current_cart.add_item(item_id)
    else
      cart = current_user.carts.build
      li = cart.add_item(params[:item_id])
      li.save
      current_user.update(current_cart: cart)
    end

    redirect_to store_path
  end
end
