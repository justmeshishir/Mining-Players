class Bank < ApplicationRecord
	belongs_to :account
	paginates_per 10

	validates :name, :bsb, :account_number, :amount, presence: true

	scope :confirmed, -> {where(confirm: true)}
	scope :unconfirmed, -> {where(confirm: false)}
end
