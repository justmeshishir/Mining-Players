class Wallet < ApplicationRecord
	belongs_to :account
	paginates_per 10
end