class FormaPagoCompraController < ApplicationController
  def index
    @forma_pago_compras = forma_pago_compra.all

    render json: @forma_pago_compras, status: :ok

  end
  def create
    @forma_pago_compras = forma_pago_compra.new(forma_pago_compra_params)
    @forma_pago_compras.save
    render json: @forma_pago_compras, status: :created

  end
  def destroy
    @forma_pago_compras = forma_pago_compras.where(id: params[:id]).first
    if @forma_pago_compras.destroy
      head(:ok)
    else
      head(:unprocessable_entity)

    end
  end

  private

  def forma_pago_compra_params
    params.require(:forma_pago_compra).permit(:nombre_forma_pago)

  end
end
