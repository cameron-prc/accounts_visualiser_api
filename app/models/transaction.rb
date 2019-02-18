class Transaction < ApplicationRecord

  validates :amount, presence: true
  validates :details, presence: true
  validates :date, presence: true
  validates :transaction_type, presence: true

end
