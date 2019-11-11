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

  # GET /products/search_results
  def search_results
    @query = params[:query]
    # @products = Product.where('name LIKE ?', "%#{@query}%")

    if params[:category_id] != '10'
      category = Category.find(params[:category_id])
      @products = category.products.where('name LIKE ?', "%#{@query}%").order('name').page(params[:page]).per(5)
    else
      @products = Product.where('name LIKE ?', "%#{@query}%").order('name').page(params[:page]).per(5)
    end
  end
end
