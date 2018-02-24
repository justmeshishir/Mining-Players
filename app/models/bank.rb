class Bank < ApplicationRecord
	belongs_to :account
	paginates_per 10
end
