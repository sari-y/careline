class Admin::InformationsController < ApplicationController

  def new
    @information = Information.new
  end

  def create
    @information = Information.new(information_params)
    @information.save
      flash[:notice] = "会社情報を登録しました。"
      redirect_to  admin_informations_show_path
  end

  def show
    @information = Information.find(params[:id])
  end

  def edit
  end

  private

  def information_params
    params.require(:information).permit(:campany_name, :name, :phone_number, :post_code, :address, :email, :establishment_date, :capital, :business_content)
  end

end
