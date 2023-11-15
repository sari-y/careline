class Admin::InformationsController < ApplicationController

  def new
    @information = Information.new
  end

  def create
    @information = Information.new(information_params)
    @information.save
      flash[:notice] = "会社情報を登録しました。"
      redirect_to admin_information_path(@information)
  end

  def show
    @information = Information.find(params[:id])
    unless @information
      flash[:notice] = "施設情報を登録できませんでした。"
      redirect_to root_path
    end
  end

  def edit
    @information = Information.find(params[:id])
  end

  def update
    @information = Information.find(params[:id])
    @information.update(information_params)
      flash[:notice] = "会社情報を更新しました。"
      redirect_to  admin_information_path(@information)
  end

  def destroy
  end

  private

  def information_params
    params.require(:information).permit(:campany_name, :name, :phone_number, :post_code, :address, :email, :establishment_date, :capital, :business_content)
  end

end
