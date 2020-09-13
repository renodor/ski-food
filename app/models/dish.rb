class Dish < ApplicationRecord
  has_one_attached :photo
  belongs_to :category, optional: true

  validates :name, :price, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 0 }
end
