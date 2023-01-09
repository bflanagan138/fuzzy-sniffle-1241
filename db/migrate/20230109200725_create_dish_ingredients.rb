class CreateDishIngredients < ActiveRecord::Migration[5.2]
  def change
    create_table :dish_ingredients do |t|
      t.integer :ingredient_quantity
    end
  end
end
