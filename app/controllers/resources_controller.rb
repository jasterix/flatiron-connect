class ResourcesController < ApplicationController

  before_action :find_resource, only: [:show, :edit, :update, :destroy]

  def index
    @resources = Resource.all
  end

  def new
    @resource = Resource.new
  end

  def create
    @resource = Resource.create(links: resource_params[:links])
    @follow = Follow.create(resource_id: @resource.id, student_id: resource_params[:students])
    if @resource.valid?
      redirect_to @resource
    else
      flash[:error] = @resource.errors.full_messages
      render 'new'
    end
  end

  def show
  end


  def edit
    @resource = Resource.find(params[:id])
  end

  def update
    @resource.update(links: resource_params[:links])
    find_or_create_follow
    if @resource.valid?
      redirect_to @resource
    else
      flash[:error] = @resource.errors.full_messages
      render 'new'
    end

  end

  def delete

  end

  private

  def resource_params
    params.require(:resource).permit(:links, :students)
  end

  def find_resource
    @resource = Resource.find(params[:id])
  end

  def find_or_create_follow
    @found = @resource.students.find_by(id: resource_params[:students])
    if @found == nil
      Follow.create(resource_id: @resource.id, student_id: resource_params[:students])
    end
  end
end
