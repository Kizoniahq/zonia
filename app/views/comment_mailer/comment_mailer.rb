class CommentMailer < ApplicationMailer
  default :from => "support@zonia.co"
  def comment_email(contact, comment)
    @contact = contact
    @comment = comment
     mail(to: @contact.email, subject: 'Hello, Here is our solution to your request')

end
end
