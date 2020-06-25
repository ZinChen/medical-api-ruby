class Api::V1::MedicalProcedureController < ApplicationController
  def index
    result = MedicalProcedure.all.order(id: :desc)
    render json: result
  end

  def show
    if procedure
      render json: procedure
    else
      render json: procedure.errors
    end
  end

  def search
    result = MedicalProcedure.search_by_name(params[:q])
    render json: result
  end

  private

  def safe_params
    params.permit(:id, :q)
  end

  def procedure
    @procedure ||= MedicalProcedure.find(params[:id])
  end
end
