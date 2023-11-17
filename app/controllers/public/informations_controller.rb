class Public::InformationsController < ApplicationController
  def new
  end

  def show
     @information = Information.find(params[:id])
  end

end
