class MarketsController < ApplicationController

  before_action :set_market, only: [:show, :destroy]
  def index
    @markets = Market.all
  end

  def show
  end

  def new
    @market = Market.new
  end

  def create
    @market = Market.new(params_market)
    if @market.save
      redirect_to market_path(@market)
    else
      render :new
    end
  end

  def destroy

    @market.destroy
  end

  private

  def params_market
    params.require(:market).permit(:address, :longitude , :latitude)
  end

  def set_market
     @market = Market.find(params[:id])
  end
end
