class ProjectsController < ApplicationController

    before_action :set_project, only: [:show]

    # GET /projects
    # GET /projects.json
    def index
      @projects = Project.all.order('created_at DESC')
    end
  def show
    @projects = Project.all.order('created_at DESC')
  end


    private
      # Use callbacks to share common setup or constraints between actions.
      def set_project
        @project = Project.find(params[:id])
      end


end
