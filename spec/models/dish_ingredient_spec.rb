require 'rails_helper'

RSpec.describe DishIngredient, type: :model do
  describe "validations" do
    it {should validate_presence_of :ingredient_quantity}
  end
  describe "relationships" do
    it {should belong_to :dish}
    it {should belong_to :ingredient}
  end
end