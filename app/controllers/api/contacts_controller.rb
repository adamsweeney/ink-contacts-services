class Api::ContactsController < ApplicationController

	def create
		@contact = current_user.contacts.build(contact_params)
		@contact.save
		respond_with @contact
	end

	def show
		respond_with current_user.contacts.find_by(id: params[:id])
	end

	def index
		respond_with current_user.contacts
	end

	def destroy
		@contact = current_user.stocks.find_by(id: params[:id])
		@contact.destroy
		respond_with @contact
	end

	private

	def contact_params
    params.permit(:first_name, :last_name, :email, :phone_number)
  end
end
