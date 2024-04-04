class MarketsController < ApplicationController
  def index
    @markets_facade = MoneyMarketFacade.new
  end

  def show
    market_facade = MoneyMarketFacade.new(params[:id])
    @market = market_facade.one_market
    @vendors = market_facade.vendors
  end
end
