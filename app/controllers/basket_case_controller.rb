class BasketCaseController < ApplicationController
  before_action :set_fruits
  before_action :set_items

  def index; end

  def order_by_fruit
    if params[:order] == "desc"
      @list_items = @list_items.sort.reverse # Sort descending
    else
      @list_items = @list_items.sort # Sort ascending
    end
    render 'basket_case/index'
  end

  def order_by_amount
    if params[:order] == "desc"
      @list_items = @list_items.sort_by(&:last).reverse # Sort by amount descending
    else
      @list_items = @list_items.sort_by(&:last) # Sort by amount ascending
    end
    render 'basket_case/index'
  end

 
  private

  def set_fruits
    @fruits = {
      oranges: 5,
      apples: 9,
      grapes: 3,
      watermelons: 2
    }
  end

  def set_items
    @list_items = @fruits
  end
end