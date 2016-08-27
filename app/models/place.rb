class Place < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true

  has_many :things
end
