class ContactMailer < ApplicationMailer

  def contact_me(contact)
    @contact = contact
    @body = contact.body

    mail from: @contact.email, to: "lucianocesarcordeiro@gmail.com"
  end

end
