class WarehousesController < ApplicationController
  def index
    @warehouses = Warehouse.all
  end

  def create
    warehouse = Warehouse.create(warehouse_params)
    if warehouse.save
      flash[:notice] = "#{warehouse.name} Has Been Created!"
    else
      flash[:alert] = "Error: #{error_message(warehouse.errors)}"
    end
    redirect_to warehouses_path
  end

  def show
  end

  private

  def warehouse_params
    params.require(:warehouse).permit(:name, :location)
  end
end
