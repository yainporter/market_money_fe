class MarketsController < ApplicationController
  def index
    @markets_facade = MarketFacade.new
  end

  def show
    
  end
end
