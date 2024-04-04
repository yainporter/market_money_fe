class MarketsController < ApplicationController
  def index
    @markets_facade = MoneyMarketFacade.new
  end

  def show
    @market_facade = MoneyMarketFacade.new(params[:id])
  end
end
