class VendorsController < ApplicationController
  def show
    require 'pry'; binding.pry
    money_market_facade = MoneyMarketFacade.new(params[:market_id])
    @vendor = money_market_facade.vendor
  end
end
