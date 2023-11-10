class Public::FacilitiesController < ApplicationController
  def index
  end

  def show
  end

  def facility_params
    params.require(:facility).permit(:name, :post_code, :address, :open, :rent, :utility, :food, :daily, :explanation)
  end
end
