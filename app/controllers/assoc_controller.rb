class AssocController < ApplicationController

  def new
    p "params id is"
    p params[:id]
    @outfit = Outfit.find_by_id(params[:id])
    # @item = Item.first
  end

  def create
    p "create assoc hello"
    # p params[:outfit_id]
  end

  # private
  #
  # def assoc_params
  #   assoc_params = params.require(:assoc).permit(:outfit_id, :item_1_id)
  # end

end
