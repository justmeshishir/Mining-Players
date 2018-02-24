class Asset < ApplicationRecord
	belongs_to :account
	has_one :balance

	scope :return_request, -> {where(return_request: true, returned_date: nil)}
	scope :active_assets, -> {where(return_request: false)}
	scope :returned_assets, -> {where.not(returned_date: nil)}
	scope :locked, -> {where(lock: true)}

	has_many :balances

	paginates_per 10

	enum status: [:waiting_delivery, :received, :active, :returned]

	validates :name, :make, :model, :memory, presence: true

end
