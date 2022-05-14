class ItemsController < ApplicationController
  def index
    @items = Item.alphabetically
  end

  def create
  end

  def edit
    redirect_to :controller => "items", :action => "index", :edit => true, :id => params[:id]
  end

  def update
  end

  def destroy
  end

  
end
