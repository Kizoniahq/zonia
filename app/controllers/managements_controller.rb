class ManagementsController < ApplicationController
  layout "management"
  before_action :authenticate_management!
  before_action :find_managements, only: [:index]
  before_action :find_projects, only: [:index]

  def index
  @managements = Management.where(management_id: current_management).order('created_at DESC')
  @projects = Project.all.order('created_at DESC')
  end


private
def find_managements
  if params[:id].nil?
    @management = current_management
  else
  @management = current_management
end
end
def find_projects
  @projects = Project.where(management_id: @management).order('created_at DESC')
end
end
