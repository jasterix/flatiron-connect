class StudentsController < ApplicationController

  before_action :find_student, only: [:show, :edit, :update, :delete]

  def index
   @students = Student.all
  end

  def new
    @student = Student.new
  end

  def create
    @student= Student.new(student_params)
    if @student.valid?
      @student.save
      redirect_to @student
    else
      flash[:error] = @student.error.full_messages
      render :new
    end
  end

  def update
    @student.update(student_params)
    if @student.valid?
      @student.save
      redirect_to @student
    else
      flash[:error] = @student.error.full_messages
      render :edit
    end
  end

  def delete
    @student.destroy
    redirect_to students_path
  end

  private

  def student_params
    params.require(:student).permit(:name, :mod_name, :github_link, :mod_start_date, :linkedin_link)
  end

  def find_student
    @student = Student.find(params[:id])
  end
end
