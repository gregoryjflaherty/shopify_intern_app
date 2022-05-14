class ItemsController < ApplicationController
  def index
    @items = Item.alphabetically
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
