ActiveAdmin.register Payout do
  index do
    column :id
    column :asset
    column :payout_amount
    column :payout_date
  end
end
