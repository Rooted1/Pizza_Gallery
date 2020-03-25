class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table(:orders) do |t|
      t.integer :pizza_id
      t.integer :cart_id
    end
  end
end
