class Transaction < ApplicationRecord

  has_many :transaction_metadata

  validates :amount, presence: true
  validates :details, presence: true
  validates :date, presence: true
  validates :transaction_type, presence: true

end
