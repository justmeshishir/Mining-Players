ActiveAdmin.register Asset do
  permit_params :all

  index do
    column :id
    column :account
    column :name
    column :make
    column :model
    column :memory
    actions
  end
end
