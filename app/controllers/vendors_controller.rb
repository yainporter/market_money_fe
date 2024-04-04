class VendorsController < ApplicationController
  def show
    @vendor = MoneyMarketFacade.new()
  end
end
