class ResourcesController < ApplicationController

  before_action :find_resource, only: [:show, :edit, :update, :destroy]

  def index
    @resources = Resource.all
  end

  def new
    @resource = Resource.new
  end

  def create
    @resource = Resource.create(resource_params)
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

  end

  def update

  end

  def delete

  end

  private

  def resource_params
    params.require(:resource).permit(:links)
  end

  def find_resource
    @resource = Resource.find(params[:id])
  end
end
