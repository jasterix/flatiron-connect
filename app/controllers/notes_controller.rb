class NotesController < ApplicationController
  before_action :get_note, only: [:show, :edit, :update, :destroy]

  def index
    @note = Note.all
  end

  def new
    @note = Note.create()
  end

  def create
    @note = Note.new(note_params)
    if @note.valid?
      @note.save
      redirect_to @note
    else
      flash[:error] = @note.errors.full_messages
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
    @note.delete
  end

  private
  def note_params
    params.require(:note).permit(:lecture_name, :content, :highlights, :student_id, :mod_id)
  end

  def get_note
   @note = Note.find(params[:id])
 end
end
