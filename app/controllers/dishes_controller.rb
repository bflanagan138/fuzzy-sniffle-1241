class DishesController < ApplicationController

  def show
    @dish = Dish.find(params[:id])
    @chef = Chef.find(params[:chef_id])
  end
end