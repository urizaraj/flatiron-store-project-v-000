class ItemsController < ApplicationController
  before_action :set_item, only: %i[show]

  private
  def set_item
    @item = Item.find(params[:id])
  end
end
