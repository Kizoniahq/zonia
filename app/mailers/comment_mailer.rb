class CommentMailer < ApplicationMailer
  default :from => "support@zonia.co"
  def comment_email(comment, contact, management)
    @contact = contact
    @comment = comment
     mail(to: @contact.email, subject: 'Hello, Here is our solution to your request')
  end
end
