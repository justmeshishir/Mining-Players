class Account < ApplicationRecord
	has_many :assets
	has_many :balances
	has_many :banks
	has_many :wallets
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :name, :email, :address, :contact, presence: true

  enum receive_type: [:crypto, :aud]

end
