class Public::InformationsController < ApplicationController
  def new
  end

  def show
  end

  private

  def information_params
    params.require(:information).permit(:campany_name, :name, :phone_number, :post_code, :address, :email, :establishment_date, :capital, :business_content)
  end
end
