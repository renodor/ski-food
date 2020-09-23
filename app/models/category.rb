class Category < ApplicationRecord
  has_many :dishes, -> { order(order: :asc) }
  has_many :children, class_name: 'Category', foreign_key: 'parent_id'
  belongs_to :parent, class_name: 'Category', optional: true

  validates :name, presence: true

  translates :name, fallbacks_for_empty_translations: true
end
