class SucursalController < ApplicationController
  def index
    @sucursals = sucursal.all

    render json: @sucursals, status: :ok

  end
  def create
    @sucursals = sucursal.new(sucursal_params)
    @sucursals.save
    render json: @sucursals, status: :created

  end
  def destroy
    @sucursals = sucursal.where(id: params[:id]).first
    if @sucursals.destroy
      head(:ok)
    else
      head(:unprocessable_entity)

    end
  end

  private

  def sucursal_params
    params.require(:sucursal).permit(:nombre_sucursal, :telefono, :direccion, :comuna, :region)

  end
end
