class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def create
  end

  def show
    @item = Item.find_by_id(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
