ActiveAdmin.register Account do
  actions :all
  permit_params :name, :address, :contact, :email, :receive_type

  index do
    column :id
    column :name
    column :address
    column :contact
    column :email
    column :receive_type
    actions
  end

  form(html: { multipart: true }) do |f|
    f.inputs do
      f.input :name
      f.input :email
      f.input :address
      f.input :contact
      f.input :receive_type
    end
    f.actions
  end

end
