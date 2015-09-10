class ContactsController < ApplicationController

	def index
		@contacts = Contact.all
	end

	def new
		@contact = Contact.new
	end

	def create
		@contact = Contact.new(contact_params)
		if @contact.save
			# redirect_to contact_path(@contact)
			redirect_to contacts_path
		else
			render :new
		end
	end

	def show
		@contact = Contact.find_by(id: params[:id])
	end

	# def favorite
	# 	@contact = Contact.find_by(favorite: params[:favorite])
	# end

	private

	def contact_params
		params.require(:contact).permit(:name, :address, :email, :phone, :favorite)
	end
end



