class Filter < ApplicationRecord
  belongs_to :category, inverse_of: :filters

  validates :field, presence: true
  validates :value, presence: true
  validates :category, presence: true
end
