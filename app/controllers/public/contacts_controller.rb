class Public::ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    @contact.save
      flash[:notice] = "お問い合わせ内容を送信しました。"
      redirect_to contact_path(@contact)
  end

  def show
    @contact = Contact.find(params[:id])
    unless @contact
      flash[:notice] = "お問い合わせ内容を送信できませんでした。"
      redirect_to root_path
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:group, :name, :name_kana, :sex, :age, :phone_number, :email, :requirements)
  end
end
