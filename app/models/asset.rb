class Asset < ApplicationRecord
	belongs_to :account
	has_many :balances
end
