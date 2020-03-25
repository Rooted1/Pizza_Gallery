class AddOrder < ActiveRecord::Migration[5.2]
    def change
      create_table(:orders) do |t|
        t.integer :user_id
        t.string :pizza_name
        t.integer :price
      end
    end
  end
  


#   class Order

#     @@all = []
#     def initialize (user_id, pizza_id)
#         @@all << self
#     end

# end
def users_totals
    Order.all.each do |o|
        arr = []
        if o.user_id == u.id
            arr << pizza_id.price
        end
    end
    arr.sum
end