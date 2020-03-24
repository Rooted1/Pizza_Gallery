class CreatePizzas < ActiveRecord::Migration[5.2]
  def change
    create_table :pizzas do |t|
      t.string :pizza_name
      t.float :price
      t.string :description
      t.timestamp
    end
  end
end
