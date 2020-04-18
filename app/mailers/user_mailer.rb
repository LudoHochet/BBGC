class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.contact_message.subject
  #
  def contact_message(contact)
    @contact = contact

    mail to: "hochet.ludovic@gmail.com", subject: "Nouveau message de bbgc.com"
  end
end
