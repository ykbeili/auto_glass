class OrderItem < ApplicationRecord
  belongs_to :order
  belongs_to :auto_glass

  def self.ransackable_attributes(auth_object = nil)
    ["auto_glass_id", "created_at", "id", "id_value", "order_id", "price", "quantity", "updated_at"]
  end
end
