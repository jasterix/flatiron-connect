class InstructorsController < ApplicationController

  before_action :find_instructor, only: [:show, :edit, :update]

  def index
    @instructors = Instructor.all
  end

  def new
    @instructor = Instructor.new
  end

  def create
    @instructor = Instructor.new(instructor_params)
    if @instructor.valid?
      @instructor.save
      redirect_to @instructor
    else
      flash[:error] = @instructor.error.full_messages
      render :new
    end
  end

  def update
    @instructor.update(instructor_params)
    if @instructor.valid?
      @instructor.save
      redirect_to @instructor
    else
      flash[:error] = @instructor.error.full_messages
      render :new
    end
  end

  private

  def instructor_params
    params.require(:instructor).permit(:name, :mod, :mod_id)
  end

  def find_instructor
    @instructor = Instructor.find(params[:id])
  end
end
