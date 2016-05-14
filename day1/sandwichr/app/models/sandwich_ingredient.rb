class SandwichIngredient < ActiveRecord::Base
  belongs_to :sandwiches
  belongs_to :ingredients

end
