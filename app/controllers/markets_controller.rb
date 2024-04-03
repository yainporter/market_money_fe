class MarketsController < ApplicationController
  def index
    @markets_facade = MarketFacade.new
  end
end
