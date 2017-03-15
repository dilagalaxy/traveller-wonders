class StaticPagesController < ApplicationController
  def index
  end

  def landing_page
    @pfeatured_products = Product.limit(3)
    @featured_product = Product.second
  end
end