class InventoriesController < ApplicationController
  def index
    @inventory = Inventory.all
  end

  def new
    @inventory = Inventory.new
  end

  def create
    @inventory = Inventory.new(inventory_params)
    if @inventory.save
      flash[:alert] = "Inventory successfully created."
      redirect_to games_path
    else
      flash[:alert] = "Inventory not created, please check your submission."
      redirect_to games_path
    end
  end

  private
  def inventory_params
    params.require(:inventory).permit(:player_id, :amount, :armor_id, :weapon_id, :spell_id, :consumable_id)
  end
end
