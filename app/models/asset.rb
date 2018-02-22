class Asset < ApplicationRecord
	belongs_to :account
	has_one :balance
	
	scope :return_request, -> {where(return_request: true)}
	scope :active_assets, -> {where(return_request: false)}
	scope :locked, -> {where(lock: true)}

	has_many :balances
end
