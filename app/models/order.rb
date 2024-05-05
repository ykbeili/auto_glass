class Order < ApplicationRecord
  belongs_to :customer
  has_many :order_items

  def self.ransackable_associations(auth_object = nil)
    ["customer", "order_items"]
  end

  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "customer_id", "id", "id_value", "quantity", "total_price", "updated_at"]
  end
end
