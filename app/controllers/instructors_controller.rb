class InstructorsController < ApplicationController

  before_action :find_instructor, only: [:show, :edit, :update]

  def index
    @instructors = Instructor.all
  end

  def new
    @instructor = Instructor.new
  end

  def create
    @instructor = Instructor.create(name: instructor_params[:name])
     @im = InstructMod.create(instructor_id: @instructor.id, mod_id: instructor_params[:mods])
    if @instructor.valid?
      redirect_to @instructor
    else
      flash[:error] = @instructor.error.full_messages
      render :new
    end
  end

  def update
    @instructor.update(name: instructor_params[:name])
    find_or_create_mods
     # byebug
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
    params.require(:instructor).permit(:name, :mods)
  end


  def find_instructor
    @instructor = Instructor.find(params[:id])
  end

  def find_or_create_mods
    @found = @instructor.mods.find_by(id: instructor_params[:mods])
      if @found == nil
        InstructMod.create(instructor_id: @instructor.id, mod_id: instructor_params[:mods])
      end
  end
end
