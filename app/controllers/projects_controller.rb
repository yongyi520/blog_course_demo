class ProjectsController < ApplicationController
  before_action 'find_project', only: [:show, :update, :destroy, :edit]

  def index
    @projects = Project.all.order("created_at desc")
  end

  def show
  end

  def create
    @project = Project.new project_params

    if @project.save
      redirect_to @project, notice: "Nice Project is created"
    else
      render 'new'
    end
  end

  def new
    @project = Project.new
  end

  def edit

  end

  def update

  end

  def destroy

  end

  private

  def find_project
    @project = Project.find(params[:id])
  end

  def project_params
    params.require(:project).permit(:title, :description, :link)
  end

end
