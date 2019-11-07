# frozen_string_literal: true

class ProductsController < ApplicationController
  def index
    # @products = Product.all
    @products = Product.order(:name).page(params[:page]).per(6)
    @categories = Category.all
  end

  def show
    @product = Product.find(params[:id])
  end

  #GET /products/search_results
  def search_results

  end
end
