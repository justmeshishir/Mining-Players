ActiveAdmin.register Balance do
actions :all
permit_params :crypto_name, :crypto_amount, :aud_amount, :payout_date
end
