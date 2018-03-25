class Managements::MailsController < ApplicationController
    layout 'management'
    before_action :find_mails, except: [:create, :new, :index]



    def create
      @contact = Contact.find(params[:contact_id])
      @mail = @contact.mails.create(params[:mail].permit(:body, :management_id, :contact_id))
      @mail.management_id = current_management.id
      if @mail.save
        management = Management.find_by_id(@contact.management_id)
        contact = @contact
        mail = @mail
        ReplyMailer.reply_mail(management, contact, mail).deliver
        redirect_to managements_contact_path(@contact), notice: "Email Sent successffully"
      else
        redirect_to managements_contact_path(@contact), notice: "Please Try again Your coustomer is waiting"
      end
    end

    private
    def find_mails
      @mail = Mail.find(params[:id])
    end

    def mails_params
      params.require(:mail).permit(:body, :management_id, :contact_id)
    end
end
