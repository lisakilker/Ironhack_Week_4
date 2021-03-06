class EntriesController < ApplicationController
	def new
		@project = Project.find(params[:project_id])
		@entry = Entry.new
		render :new
	end
	
	def create
		@project = Project.find(params[:project_id])
		@entry = @project.entries.new(entry_params)
		if @entry.save
			redirect_to project_path(@project)
		else
			render :new
		end
	end

	def destroy
		@entry = Entry.find(params[:id])
		@entry.destroy
		redirect_to project_path(@entry.project)
	end

	def edit
		@entry = Entry.find(params[:id])
		render :edit
	end

	def update
		@entry = Entry.find(params[:id])
		if @entry.update(entry_params)
			redirect_to project_path(@entry.project)
		else
			render :edit
		end
	end

	private

	def entry_params
		params.require(:entry).permit(:minutes, :hours, :start_date, :comment)
	end
end
