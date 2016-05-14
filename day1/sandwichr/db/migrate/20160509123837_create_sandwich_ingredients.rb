class CreateSandwichIngredients < ActiveRecord::Migration
  def change
  	create_table :sandwiches do |t|
  		t.string :name
      t.string   :bread_type
  	end

  create_table :ingredients do |t|
	 t.string  :name
   t.integer :calories
  end

    create_table :sandwich_ingredients do |t|
    	t.belongs_to :sandwiches, index: true
    	t.belongs_to :ingredients, index: :true
   	 	t.timestamps null: false
	end
  end
end
