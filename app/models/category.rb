class Category < ApplicationRecord
  has_many :filters, inverse_of: :category

  validates :name, presence: true
end
