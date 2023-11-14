class Admin::FacilitiesController < ApplicationController

  def new
    @facility = Facility.new
  end

  def create
    @facility = Facility.new(facility_params)
    @facility.save
      flash[:notice] = "施設情報を登録しました。"
      redirect_to  admin_facility_path(@facility)
  end

  def index
    @facilities = Facility.all
  end

  def show
    @facility = Facility.find(params[:id])
    unless @facility
      flash[:notice] = "施設情報を登録できませんでした。"
      redirect_to root_path
    end
  end

  def edit
    @facility = Facility.find(params[:id])
  end

  def update
    @facility = Facility.find(params[:id])
    @facility.update(facility_params)
      flash[:notice] = "施設情報を更新しました。"
      redirect_to  admin_facility_path(@facility)
  end

  def destroy
  end


  def facility_params
    params.require(:facility).permit(:name, :post_code, :address, :open, :rent, :utility, :food, :daily, :explanation)
  end
end
