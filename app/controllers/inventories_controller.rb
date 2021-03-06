class InventoriesController < ApplicationController
  def index
    @inventories = Inventory.all
  end

  def new
    @inventory = Inventory.new
  end

  def create
    @player = Player.find(params[:player_id])
    @inventory = Inventory.new(inventory_params)
    if @inventory.save
      flash[:alert] = "Inventory successfully created."
      redirect_to games_path
    else
      flash[:alert] = "Inventory not created, please check your submission."
      redirect_to new_player_inventory_path(@player)
    end
  end

  private
  def inventory_params
    params.require(:inventory).permit(:player_id, :amount, :armor_id, :weapon_id, :spell_id, :consumable_id)
  end
end
