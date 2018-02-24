ActiveAdmin.register Asset do
  actions :all
  permit_params :account, :name, :make, :model, :memory, :return_request, :returned_date, :lock

  scope :all
  scope :active_assets
  scope :return_request
  scope :locked

  index do
    column :id
    column :account
    column :name
    column :make
    column :model
    column :memory
    column :status
    actions
  end
end
