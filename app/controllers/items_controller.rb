class ItemsController < ApplicationController
  def index
    if params[:show_inactive] == 'true'
      @items = Item.all
    else
      @items = Item.active_items
    end
  end

  def activate
    item = Item.find(params[:id])
    make_active(item)
    redirect_to items_path
  end
end
