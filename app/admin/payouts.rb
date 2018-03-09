ActiveAdmin.register Payout do
  actions :all
  permit_params :asset, :payout_amount, :payout_date, :transaction_id

  index do
    column :id
    column :asset
    column :payout_amount
    column :payout_date
    column "Transaction ID", :transaction_id
    actions
  end

  form(html: { multipart: true }) do |f|
    f.inputs do
      f.input :transaction_id, label: "Transaction ID"
    end
    f.actions
  end
end
