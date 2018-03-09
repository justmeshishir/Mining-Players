class Wallet < ApplicationRecord
	belongs_to :account
	paginates_per 10

	validates :address, :date, :amount, presence: true
	 validates_format_of :address, :with => /^0x[a-fA-F0-9]{40}$/, :multiline => true, :on => :create

	scope :confirmed, -> {where(confirm: true)}
	scope :unconfirmed, -> {where(confirm: false)}
end
