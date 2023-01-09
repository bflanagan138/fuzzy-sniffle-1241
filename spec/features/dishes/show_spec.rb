require 'rails_helper'

RSpec.describe 'dish show page' do
  before(:each) do
    Chef.delete_all
    Dish.delete_all
    Ingredient.delete_all
    DishIngredient.delete_all
    
    @chef_1 = Chef.create
    @dish_1 = Dish.create!(name: "falafel", description: "sandwich")
    @dish_2 = Dish.create!(name: "enchiladas", description: "enchilada platter")
    @dish_3 = Dish.create!(name: "denver omelette", description: "breakfast platter")
    @dish_4 = Dish.create!(name: "smoothie", description: "blended drink")

    
  end
end