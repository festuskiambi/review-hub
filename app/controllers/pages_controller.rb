class PagesController < ApplicationController
  before_action :authenticate_customer!

  def home
  end
end
