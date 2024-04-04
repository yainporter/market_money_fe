class VendorsController < ApplicationController
  def show
    money_market_facade = MoneyMarketFacade.new(params[:market_id], params[:id])
    @vendor = money_market_facade.vendor
  end
end
