class CompraController < ApplicationController
  def index
    @compras = compra.all

    render json: @compras, status: :ok

  end
  def create
    @compras = compra.new(compra_params)
    @compras.save
    render json: @compras, status: :created

  end
  def destroy
    @compras = cargo.where(id: params[:id]).first
    if @compras.destroy
      head(:ok)
    else
      head(:unprocessable_entity)

    end
  end



end
