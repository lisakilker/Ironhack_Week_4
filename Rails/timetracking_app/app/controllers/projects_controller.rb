class ProjectsController < ApplicationController

	def index
		@projects = Project.order("updated_at DESC").limit(10)
	end

	def new
		@project = Project.new
	end

	def create
		# title = params[:project][:title]
		# description = params[:project][:description]
		# @project = Project.new({title: title, description: description})
			@project = Project.new(project_params)
		if @project.save
			redirect_to "/projects/#{@project.id}"
		else
			render :new
		end
	end

	def show
		id = params[:id]
		@project = Project.find(id)
		if @project.nil?
			render 'no_project_found'
		else
			@entries = @project.entries
			render :show
		end	
	end

	private

	def project_params
		params.require(:project).permit(:title, :description)
	end
end
