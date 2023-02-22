class Restaurant < ApplicationRecord
  validates :name, presence: true
  validates :category, presence: true, inclusion: %w[chinese italian japanese french belgian]
  validates :address, presence: true

  has_many :reviews, dependent: :destroy
end
