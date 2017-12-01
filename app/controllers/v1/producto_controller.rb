class ProductoController < ApplicationController
  def index
    @productos = producto.all

    render json: @productos, status: :ok

  end
  def create
    @productos = producto.new(producto_params)
    @productos.save
    render json: @productos, status: :created

  end
  def destroy
    @productos = producto.where(id: params[:id]).first
    if @productos.destroy
      head(:ok)
    else
      head(:unprocessable_entity)

    end
  end

  private

  def producto_params
    params.require(:producto).permit(:nombre_producto, :tipo, :stock, :precio_compra, :precio_venta)

  end


end
