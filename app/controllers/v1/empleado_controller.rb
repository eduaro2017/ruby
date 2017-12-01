class EmpleadoController < ApplicationController
  def index
    @empleados = empleado.all

    render json: @empleados, status: :ok

  end
  def create
    @empleados = empleado.new(empleado_params)
    @empleados.save
    render json: @empleados, status: :created

  end
  def destroy
    @empleados = empleado.where(id: params[:id]).first
    if @empleados.destroy
      head(:ok)
    else
      head(:unprocessable_entity)

    end
  end

  private

  def empleado_params
    params.require(:empleado).permit(:nombre, :apellido, :telefono, :email, :edad, :direccion, :comuna, :region)

  end
end
