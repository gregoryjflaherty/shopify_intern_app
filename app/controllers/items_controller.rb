class ItemsController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :get_item, only: [:update, :destroy]

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
    @item.destroy!
    flash[:notice] = "#{@item.name} Has Been Deleted!"
    redirect_to items_path
  end

  private

  def item_params
    params.require(:item).permit(:name, :description,:warehouse_id)
  end

  def get_item
    @item = Item.find_by(id: params[:id])
  end
end
