class Balance < ApplicationRecord
	belongs_to :asset
	belongs_to :account
	scope :unreturned_assets, -> {joins(:asset).where(assets: { return_request: false})}
	scope :returned_assets, -> {joins(:asset).where(assets: { return_request: true})}
end
