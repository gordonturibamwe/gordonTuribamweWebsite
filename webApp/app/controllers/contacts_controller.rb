class ContactsController < ApplicationController
  before_action :set_contact, only: [:show, :edit, :update, :destroy]

  def index
    @contacts = Contact.all
  end

  def show
  end

  def new
    @about_user = AboutUser.find(params[:about_user_id])
    @contact = @about_user.build_contact
  end

  def edit
    @about_user = AboutUser.find(params[:about_user_id])
    @contact = set_contact
  end

  def create
    @about_user = AboutUser.find(params[:about_user_id])
    @contact = @about_user.build_contact(contact_params)

    respond_to do |format|
      if @contact.save
        format.html { redirect_to about_user_path(@contact), notice: 'Contact was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    @about_user = AboutUser.find(params[:about_user_id])
    respond_to do |format|
      if @contact.update(contact_params)
        format.html { redirect_to about_user_path(@contact), notice: 'Contact was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @about_user = AboutUser.find(params[:about_user_id])
    @contact.destroy
    respond_to do |format|
      format.html { redirect_to about_user_path(@contact), notice: 'Contact was successfully destroyed.' }
    end
  end

  private
    def set_contact
      @contact = Contact.find(params[:id])
    end

    def contact_params
      params.require(:contact).permit(:tel, :street, :city, :state, :country, :about_user_id)
    end
end
