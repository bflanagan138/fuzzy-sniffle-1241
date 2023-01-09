require 'rails_helper'

RSpec.describe 'dish show page' do
  before(:each) do
    Chef.delete_all
    Dish.delete_all
    Ingredient.delete_all
    DishIngredient.delete_all

    @chef_1 = Chef.create!(name: "Guy Fieri")
    @chef_2 = Chef.create!(name: "Julia Child")

    @dish_1 = @chef_1.dishes.create!(name: "falafel", description: "sandwich")
    @dish_2 = @chef_2.dishes.create!(name: "enchiladas", description: "enchilada platter")
    @dish_3 = @chef_2.dishes.create!(name: "omelette", description: "breakfast platter")
    @dish_4 = @chef_2.dishes.create!(name: "smoothie", description: "blended drink")

    @ingredient_1 = Ingredient.create!(name: "falafel ball", calories: 200)
    @ingredient_2 = Ingredient.create!(name: "pita", calories: 125)
    @ingredient_3 = Ingredient.create!(name: "souvlaki", calories: 80)
    @ingredient_4 = Ingredient.create!(name: "tortilla", calories: 60)
    @ingredient_5 = Ingredient.create!(name: "beans", calories: 75)
    @ingredient_6 = Ingredient.create!(name: "egg", calories: 100)
    @ingredient_7 = Ingredient.create!(name: "cheese", calories: 140)
    @ingredient_8 = Ingredient.create!(name: "milk", calories: 300)
    @ingredient_9 = Ingredient.create!(name: "strawberries", calories: 76)
    @ingredient_10 = Ingredient.create!(name: "banana", calories: 18)
    @ingredient_11 = Ingredient.create!(name: "protein powder", calories: 420)
    @ingredient_12 = Ingredient.create!(name: "greens", calories: 20)

    @dish_ingredient_1 = DishIngredient.create!(dish_id: @dish_1.id, ingredient_id: @ingredient_1.id, ingredient_quantity: 3)
    @dish_ingredient_1 = DishIngredient.create!(dish_id: @dish_1.id, ingredient_id: @ingredient_2.id, ingredient_quantity: 1)
    @dish_ingredient_1 = DishIngredient.create!(dish_id: @dish_1.id, ingredient_id: @ingredient_3.id, ingredient_quantity: 2)
    @dish_ingredient_1 = DishIngredient.create!(dish_id: @dish_2.id, ingredient_id: @ingredient_4.id, ingredient_quantity: 4)
    @dish_ingredient_1 = DishIngredient.create!(dish_id: @dish_2.id, ingredient_id: @ingredient_5.id, ingredient_quantity: 6)
    @dish_ingredient_1 = DishIngredient.create!(dish_id: @dish_2.id, ingredient_id: @ingredient_7.id, ingredient_quantity: 4)
    @dish_ingredient_1 = DishIngredient.create!(dish_id: @dish_3.id, ingredient_id: @ingredient_6.id, ingredient_quantity: 3)
    @dish_ingredient_1 = DishIngredient.create!(dish_id: @dish_3.id, ingredient_id: @ingredient_7.id, ingredient_quantity: 2)
    @dish_ingredient_1 = DishIngredient.create!(dish_id: @dish_4.id, ingredient_id: @ingredient_8.id, ingredient_quantity: 3)
    @dish_ingredient_1 = DishIngredient.create!(dish_id: @dish_4.id, ingredient_id: @ingredient_9.id, ingredient_quantity: 3)
    @dish_ingredient_1 = DishIngredient.create!(dish_id: @dish_4.id, ingredient_id: @ingredient_10.id, ingredient_quantity: 3)
    @dish_ingredient_1 = DishIngredient.create!(dish_id: @dish_4.id, ingredient_id: @ingredient_11.id, ingredient_quantity: 3)
    @dish_ingredient_1 = DishIngredient.create!(dish_id: @dish_4.id, ingredient_id: @ingredient_12.id, ingredient_quantity: 3)
  end

  describe 'visit a dish show page'
#   As a visitor
# When I visit a dish's show page
# I see the dish’s name and description
# And I see a list of ingredients for that dish
# and a total calorie count for that dish
# And I see the chef's name.
end