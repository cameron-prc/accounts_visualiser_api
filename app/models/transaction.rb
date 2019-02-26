class Transaction < ApplicationRecord

  has_many :transaction_metadata, :inverse_of => :transaction_object

  validates :amount, presence: true
  validates :details, presence: true
  validates :date, presence: true
  validates :transaction_type, presence: true


  def self.search(args)

    start_date = args[:start_date] || (Date.today - 3.months).strftime("%Y-%m-%d")
    end_date = args[:end_date] || Date.today.strftime("%Y-%m-%d")

    Transaction.where(date: start_date..end_date)

  end

end
