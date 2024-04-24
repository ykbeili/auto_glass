ActiveAdmin.register AutoGlass do
    permit_params :description
  
    filter :description
    filter :created_at
    filter :updated_at
  
    actions :all, except: []
  
    # index, show, form ...
  end