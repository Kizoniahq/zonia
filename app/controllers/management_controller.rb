class ManagementController < ApplicationController
  layout "management"
  before_action :authenticate_management!
  before_action :find_managements, only: [:show, :dashboard]
  before_action :find_projects, only: [:show, :dashboard]

  def index
    
  end

  def show
  end

private
def find_managements
  if params[:id].nil?
    @management = current_management
  else
  @management = management.find(params[:id])
end
end
def find_projects

  @projects = Project.where(management_id: @management).order('created_at DESC')

end
end
