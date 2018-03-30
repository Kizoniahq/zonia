class ContactmailerMailer < ApplicationMailer
  default :from => "support@zonia.co"
  def contact_email(contact)
    @contact = contact
     mail(to: contact.email, subject: 'Your Request Has Been Recieved')
  end
end
