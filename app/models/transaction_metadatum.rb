class TransactionMetadatum < ApplicationRecord
  belongs_to :transaction_object, foreign_key: 'transaction_id', class_name: 'Transaction', :inverse_of => :transaction_metadata, dependent: :destroy
end
