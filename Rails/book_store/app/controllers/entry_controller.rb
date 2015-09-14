class EntryController < ApplicationController

	def update
		@entry = Entry.find(params[:id])
		if @entry.update(entry_params)
			redirect_to project_path(@entry.project)
		else
			render :entry
		end
	end

	private

	def entry_params
		params.require(:product).permit(:product, :description, :price, :ranking)
	end
end

