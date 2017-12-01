class FormaPagoVentaController < ApplicationController
  def index
    @forma_pago_venta = forma_pago_venta.all

    render json: @forma_pago_venta, status: :ok

  end
  def create
    @forma_pago_venta = forma_pago_venta.new(forma_pago_venta_params)
    @forma_pago_venta.save
    render json: @forma_pago_venta, status: :created

  end
  def destroy
    @forma_pago_venta = forma_pago_venta.where(id: params[:id]).first
    if @forma_pago_venta.destroy
      head(:ok)
    else
      head(:unprocessable_entity)

    end
  end

  private

  def forma_pago_venta_params
    params.require(:forma_pago_venta).permit(:nombre_forma_pago)

  end
end
