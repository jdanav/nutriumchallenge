class ProfessionalsController < ApplicationController

  def index
    @articles = Professional.all
  end

  def show
    @professional = Professional.find(params[:id])
  end

  def new
  end

  def edit
    @professional = Professional.find(params[:id])
  end


  def destroy
    @professional = Professional.find(params[:id])
    @professional.destroy

    redirect_to professionals_path
  end

  def pro_params
    params.require(:professional).permit(:name,:job_description,:pro_id,:office,:address,:city,:appointment,:price,:photo)
  end

  def create
    @professional = Professional.new(pro_params)

    @professional.save
    redirect_to @professional
  end
end
