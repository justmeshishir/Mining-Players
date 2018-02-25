ActiveAdmin.register Bank do
  menu false
  permit_params :name, :bsb, :account_number, :amount, :confirm

end
