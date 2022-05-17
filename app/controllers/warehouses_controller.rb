class WarehousesController < ApplicationController
  def index
    @warehouses = Warehouse.all
  end

  def create
  end

  def show
  end
end
