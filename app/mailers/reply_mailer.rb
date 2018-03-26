class ReplyMailer < ApplicationMailer
  default :from => "support@zonia.co"
  def reply_email(contact, mail)
    @contact = contact
    @mail = mail
     mail(to: contact.Email, subject: 'Hello, Here is our solution to your request')
  end
end
