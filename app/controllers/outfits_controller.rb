class OutfitsController < ApplicationController
  def index
    @outfits = Outfit.all
  end

  def new
    @outfit = Outfit.new
  end

  def create
    outfit = Outfit.create(outfit_params)
    if outfit.save
      redirect_to outfit_path(outfit)
    end
  end

  def show
    @outfit = Outfit.find_by_id(params[:id])
  end

  def edit
    @outfit = Outfit.find_by_id(params[:id])
  end

  def update
  end

  def destroy
  end

  private

  def outfit_params
    outfit_params = params.require(:outfit).permit(:name, :tag)
  end

end
