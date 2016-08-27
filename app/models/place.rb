class Place < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
end
