class DishIngredient < ApplicationRecord
  validates_presence_of :ingredient_quantity
 
  belongs_to :ingredient
  belongs_to :dish 
end