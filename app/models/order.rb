class Order < ActiveRecord::Base
    # attr_reader :user_id, :pizza_id
    # @@all = []
    # def initialize (user_id, pizza_id)
    #     @user_id = user_id
    #     @pizza_id = pizza_id
    #     @@all << self
    # end

    belongs_to :cart
    belongs_to :pizza

end