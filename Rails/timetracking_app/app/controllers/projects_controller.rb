class ProjectsController < ApplicationController

	def index
		@projects = Project.order("updated_at DESC").limit(10)
	end
end
