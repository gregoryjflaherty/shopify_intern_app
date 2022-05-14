class ItemsController < ApplicationController
  before_action :get_item, only: [:update]

  def index
    @items = Item.alphabetically
  end

  def create
  end

  def edit
    redirect_to :controller => "items", :action => "index", :edit => true, :id => params[:id]
  end

  def update
    @item.update(item_params)
    flash[:notice] = "#{@item.name} Has Been Updated!"
    redirect_to items_path
  end

  def destroy
  end

  private

  def item_params
    params.require(:item).permit(:name, :description,:warehouse_id)
  end

  def get_item
    @item = Item.find_by(id: params[:id])
  end
end
