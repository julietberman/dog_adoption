class RescuesController < ApplicationController
  def index
    @rescues = Rescue.all
  end
  def show
    @rescue = Rescue.find(params[:id])
    @dogs = @rescue.dogs
  end

  def new
    @rescue = Rescue.new
  end

  def create
    Rescue.create(rescue_params)
    redirect_to rescues_path
  end

  private
  def rescue_params
    params.require(:rescue).permit(:name, :img_url, :website, :state)
  end

end
