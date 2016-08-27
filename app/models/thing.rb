class Thing < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  validates :quantity, numericality: { greater_than: 0 }
end
