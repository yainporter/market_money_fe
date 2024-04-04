class MarketsController < ApplicationController
  def index
    @markets_facade = MarketFacade.new
  end

  def show
    market_facade = MarketFacade.new(params[:id])
    @market = market_facade.one_market
  end
end
