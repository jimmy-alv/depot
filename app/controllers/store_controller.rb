class StoreController < ApplicationController
  include CurrentCart
  before_action :set_cart  
  before_action :set_visit_counter, only: %i[ index ]

  def index
    @products = Product.order(:title)
    
  end

  private

  def set_visit_counter
    session[:counter].nil? ? session[:counter] = 1 : session[:counter] += 1
  end
end
