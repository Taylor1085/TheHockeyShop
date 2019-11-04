# frozen_string_literal: true

class Product < ApplicationRecord
  has_many :product_categories, dependent: :destroy
  has_many :categories, through: :product_categories

  validates :name, :description, :price, presence: true
  validates :price, numericality: { only_integer: true }

  has_one_attached :image
end
