class Bank < ApplicationRecord
	belongs_to :account
	paginates_per 10

	validates :name, :bsb, :account_number, presence: true
end
