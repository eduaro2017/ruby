class ItemCompraController < ApplicationController
  def index
    @item_compras = item_compra.all

    render json: @item_compras, status: :ok

  end
  def create
    @item_compras = item_compra.new(item_compras_params)
    @item_compras.save
    render json: @item_compras, status: :created

  end
  def destroy
    @item_compras = item_compras.where(id: params[:id]).first
    if @item_compras.destroy
      head(:ok)
    else
      head(:unprocessable_entity)

    end
  end

  private

  def item_compras_params
    params.require(:item_compra).permit(:fecha_compra, :estado_compra, :cantidad_producto, :descuento, :total_compra)

  end

end
