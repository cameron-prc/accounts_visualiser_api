class TransactionMetadatum < ApplicationRecord
  belongs_to :transaction_object, foreign_key: 'id', class_name: 'Transaction'
end
