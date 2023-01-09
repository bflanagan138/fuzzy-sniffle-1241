require 'rails_helper'

RSpec.describe Dish, type: :model do
  describe "validations" do
    it {should validate_presence_of :name}
    it {should validate_presence_of :description}
  end
  describe "relationships" do
    it {should belong_to :chef}
  end

  before(:each) do
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
    @dish_ingredient_2 = DishIngredient.create!(dish_id: @dish_1.id, ingredient_id: @ingredient_2.id, ingredient_quantity: 1)
    @dish_ingredient_3 = DishIngredient.create!(dish_id: @dish_1.id, ingredient_id: @ingredient_3.id, ingredient_quantity: 2)
    @dish_ingredient_4 = DishIngredient.create!(dish_id: @dish_2.id, ingredient_id: @ingredient_4.id, ingredient_quantity: 4)
    @dish_ingredient_5 = DishIngredient.create!(dish_id: @dish_2.id, ingredient_id: @ingredient_5.id, ingredient_quantity: 6)
    @dish_ingredient_6 = DishIngredient.create!(dish_id: @dish_2.id, ingredient_id: @ingredient_7.id, ingredient_quantity: 4)
    @dish_ingredient_7 = DishIngredient.create!(dish_id: @dish_3.id, ingredient_id: @ingredient_6.id, ingredient_quantity: 3)
    @dish_ingredient_8 = DishIngredient.create!(dish_id: @dish_3.id, ingredient_id: @ingredient_7.id, ingredient_quantity: 2)
    @dish_ingredient_9 = DishIngredient.create!(dish_id: @dish_4.id, ingredient_id: @ingredient_8.id, ingredient_quantity: 3)
    @dish_ingredient_10 = DishIngredient.create!(dish_id: @dish_4.id, ingredient_id: @ingredient_9.id, ingredient_quantity: 3)
    @dish_ingredient_11 = DishIngredient.create!(dish_id: @dish_4.id, ingredient_id: @ingredient_10.id, ingredient_quantity: 3)
    @dish_ingredient_12 = DishIngredient.create!(dish_id: @dish_4.id, ingredient_id: @ingredient_11.id, ingredient_quantity: 3)
    @dish_ingredient_13 = DishIngredient.create!(dish_id: @dish_4.id, ingredient_id: @ingredient_12.id, ingredient_quantity: 3)
  end

  describe 'dish ingredients' do
    it 'returns all ingredients in a dish' do
      expect(@dish_1.all_ingredients.sort).to eq([@ingredient_1, @ingredient_2, @ingredient_3])
    end
  end
end