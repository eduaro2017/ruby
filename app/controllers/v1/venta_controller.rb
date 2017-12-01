class VentaController < ApplicationController
  def index
    @venta = venta.all

    render json: @venta, status: :ok

  end
  def create
    @venta = venta.new(venta_params)
    @venta.save
    render json: @venta, status: :created

  end
  def destroy
    @venta = venta.where(id: params[:id]).first
    if @venta.destroy
      head(:ok)
    else
      head(:unprocessable_entity)

    end
  end

  private

  def venta_params
    params.require(:venta).permit(:mesa, :piso)

  end
end
