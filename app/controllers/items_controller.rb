class ItemsController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :get_item, only: [:update, :destroy]

  def index
    if params[:sort]
      @items = Item.order(:warehouse_id)
    else
      @items = Item.alphabetically
    end
  end

  def create
    check_warehouse
    item = Item.create(item_params)
    if item.save
      flash[:notice] = "#{item.name} Has Been Created!"
    else
      flash[:alert] = "Error: #{error_message(item.errors)}"
    end
    redirect_to items_path
  end

  def edit
    redirect_to :controller => "items", :action => "index", :edit => true, :id => params[:id]
  end

  def update
    @item.update(item_params)
    if @item.save
      flash[:notice] = "#{@item.name} Has Been Updated!"
    else
      flash[:alert] = "Error: #{error_message(@item.errors)}"
    end
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

  def check_warehouse
    params[:warehouse_id] == "" ? params[:warehouse_id] = nil : params[:warehouse_id]
  end
end
