class ItemVentaController < ApplicationController
  def index
    @item_venta = item_venta.all

    render json: @item_venta, status: :ok

  end
  def create
    @item_venta = item_venta.new(item_venta_params)
    @item_venta.save
    render json: @item_venta, status: :created

  end
  def destroy
    @item_venta = item_venta.where(id: params[:id]).first
    if @item_venta.destroy
      head(:ok)
    else
      head(:unprocessable_entity)

    end
  end

  private

  def item_venta_params
    params.require(:item_venta).permit(:fecha_venta, :cantidad_producto, :descuento, :total_venta)

  end
end
