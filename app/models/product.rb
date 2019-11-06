# frozen_string_literal: true

class Product < ApplicationRecord
  validates :name, :description, :price, presence: true
  belongs_to :category

  has_one_attached :image
end
