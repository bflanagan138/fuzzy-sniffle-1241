class RemoveIngredientQuantityFromDishIngredients < ActiveRecord::Migration[5.2]
  def change
    remove_column :dish_ingredients, :ingredient_quantity, :integer
  end
end
