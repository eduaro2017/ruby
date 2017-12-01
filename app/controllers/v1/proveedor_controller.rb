class ProveedorController < ApplicationController
  def index
    @proveedors = proveedor.all

    render json: @proveedors, status: :ok

  end
  def create
    @proveedors = proveedor.new(proveedor_params)
    @proveedors.save
    render json: @proveedors, status: :created

  end
  def destroy
    @proveedors = proveedor.where(id: params[:id]).first
    if @proveedors.destroy
      head(:ok)
    else
      head(:unprocessable_entity)

    end
  end

  private

  def proveedor_params
    params.require(:proveedor).permit(:nombre_proveedor, :razon_social, :email, :telefono, :direccion, :comuna, :region)

  end
end
