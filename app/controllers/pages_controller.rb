class PagesController < ApplicationController
  before_action :authenticate_customer!

  def home
    @products = Product.all
  end
end
