ActiveAdmin.register Asset do
  actions :all
  permit_params :account, :name, :make, :model, :memory, :return_request, :returned_date, :status, :lock, :serial_number, :description

  scope :all
  scope :active_assets
  scope :return_request
  scope :locked
  scope :returned_assets

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

  form(html: { multipart: true }) do |f|
    f.inputs do
      f.input :name
      f.input :make
      f.input :model
      f.input :memory
      f.input :return_request
      f.input :return_request_date, as: :datepicker
      f.input :returned_date, as: :datepicker
      f.input :status
      f.input :lock
    end
    f.actions
  end
end
