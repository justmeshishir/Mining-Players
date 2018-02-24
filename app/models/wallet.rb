class Wallet < ApplicationRecord
	belongs_to :account
	paginates_per

	validates :address, :date, presence: true
end
