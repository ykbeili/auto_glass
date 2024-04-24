ActiveAdmin.register AutoGlass do
    permit_params :description, :availability, :body_style, :created_at, :delivery_option, :description, :id, :id_value, :make, :model, :part_number, :price, :quantity, :ships_within_days, :updated_at, :year

  
    filter :make
    filter :model
    filter :year
    filter :make
    filter :created_at
    filter :updated_at
  
    actions :all, except: []
  
    # index, show, form ...
  end