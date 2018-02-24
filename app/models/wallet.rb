class Wallet < ApplicationRecord
	belongs_to :account
	paginates_per 10

	validates :address, :date, presence: true
end
