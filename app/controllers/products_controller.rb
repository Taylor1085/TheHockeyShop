# frozen_string_literal: true

class ProductsController < ApplicationController
  def index
    # @products = Product.all
    @products = Product.order(:name).page params[:page]
    @categories = Category.all
  end

  def show
    @product = Product.find(params[:id])
  end
end
