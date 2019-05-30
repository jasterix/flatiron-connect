class ModsController < ApplicationController
  before_action :get_mod, only: [:show, :edit, :update, :destroy]

  def index
    @mods = Mod.all
  end

  def show
    @mod = Mod.find(params[:id])
    i = @mod.id
    @lecture_groups = Note.all.group(:lecture_name).where(@mod[id:i])
    # byebug
    @lecture_groups.uniq
    @lecture_names = @lecture_groups.map{|x| x.lecture_name}
    @not_empty_lectures = []
    @lecture_names.each do |name|
      @lecture_groups.each do |note_object|
        if !note_object.content.nil?
          # byebug
          @not_empty_lectures << note_object #returns array of note objects
        end
        @not_empty_lectures.uniq.map(&:lecture_name)
      end
    end
  end




# array.select do |number|
# end.map do |number|
#   sfdjklfdsjkl
# end
#   end


  def get_mod
  @mod = Mod.find(params[:id])
  end
end
