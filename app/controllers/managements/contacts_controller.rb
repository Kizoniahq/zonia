class Managements::ContactsController < ApplicationController
  layout 'management'
    before_action :authenticate_management!
  before_action :set_contact, only: [:show, :edit, :update, :destroy]
  # GET /contacts/new
  def index
  @contacts = Contact.all.order('created_at DESC')

 end

  def show
  end
  def new
    @contact = current_management.contacts.build
  end

  # GET /contacts/1/edit
  def edit
  end

  # POST /contacts
  # POST /contacts.json
  def create
    @contact = current_management.contacts.build(contact_params)

    respond_to do |format|
      if @contact.save
        format.html { redirect_to root_path, notice: 'Hi, Will get in touch soon.' }
        format.json { redirect_to root_path, status: :created, location: @contact }
      else
        format.html { render :new }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
      end

    end
  end


  def update
    respond_to do |format|
      if @contact.update(contact_params)
        format.html { redirect_to managements_contacts_path, notice: 'contact was successfully updated.' }
        format.json { render :show, status: :ok, location: @contact }
      else
        format.html { render :edit }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contacts/1
  # DELETE /contacts/1.json
  def destroy
    @contact.destroy
    respond_to do |format|
      format.html { redirect_to managements_contacts_path, notice: 'contact was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contact
      @contact = Contact.find(params[:id])
    end


    # Never trust parameters from the scary internet, only allow the white list through.
    def contact_params
      params.require(:contact).permit(:name, :email, :ideaname, :country, :phone, :message, :management_id )
    end
end
