class OrderItem < ApplicationRecord
  belongs_to :order
  belongs_to :auto_glass
end
