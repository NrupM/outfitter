class OutfitsController < ApplicationController
  def index
    @outfits = Outfit.all
  end

  def new
  end

  def create
  end

  def show
    @outfit = Outfit.find_by_id(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
