class ContactController < ApplicationController
skip_before_action :authenticate_user!, only: :create

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      UserMailer.contact_message(@contact).deliver
      flash.notice = "Merci pour votre message, je reviens vers vous rapidement."
      redirect_to root_path
    else
      redirect_to contact_path
      # contact_info: {name: @contact.name, email: @contact.email, message: @contact.message, errors: @contact.errors.messages})
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :message)
  end
end
