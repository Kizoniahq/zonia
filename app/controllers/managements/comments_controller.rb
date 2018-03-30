class Managements::CommentsController < ApplicationController
  layout 'management'
  before_action :find_comments, except: [:create, :new, :index]



  def create
    @contact = Contact.find(params[:contact_id])
    @comment = @contact.comments.create(params[:comment].permit(:body, :management_id, :contact_id, :email))
    @comment.management_id = current_management.id
    if @comment.save
      management = Management.find_by_id(@contact.management_id)
      comment = @comment
      contact = @contact
      CommentMailer.comment_email(management, contact, comment).deliver
      redirect_to managements_contact_path(@contact), notice: "comment Sent successffully"
    else
      redirect_to managements_contact_path(@contact), notice: "Please Try again Your coustomer is waiting"
    end
  end

  private
  def find_comments
    @comment = Comment.find(params[:id])
  end

  def comments_params
    params.require(:comment).permit(:body, :management_id, :contact_id)
  end
end
