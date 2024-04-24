class AutoGlass < ApplicationRecord
    def self.ransackable_attributes(auth_object = nil)
        ["availability", "body_style", "created_at", "delivery_option", "description", "id", "id_value", "make", "model", "part_number", "price", "quantity", "ships_within_days", "updated_at", "year"]
    end
end
