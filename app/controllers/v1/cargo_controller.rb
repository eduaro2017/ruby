class CargoController < ApplicationController
  def index
    @cargos = cargo.all

    render json: @cargos, status: :ok

  end
  def create
    @cargos = cargo.new(cargo_params)
    @cargos.save
    render json: @cargos, status: :created

  end
  def destroy
    @cargos = cargo.where(id: params[:id]).first
    if @cargos.destroy
      head(:ok)
    else
      head(:unprocessable_entity)

    end
  end


  private

  def cargo_params
    params.require(:cargo).permit(:cargo, :salario)

  end



end
