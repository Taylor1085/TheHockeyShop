# frozen_string_literal: true

ActiveAdmin.register Product do
  permit_params :name, :description, :price, :image, :category_id

  # form do |f|
  #   f.inputs
  #   f.inputs do
  #     f.input :name, as: :select, collection: Category.select(:name)
  #   end

  #   f.actions
  # end

  form do |f|
    f.semantic_errors
    f.inputs
    f.inputs do
      f.input :image, as: :file
    end
    f.actions
  end
end
