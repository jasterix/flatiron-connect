class ModsController < ApplicationController
  before_action :get_mod, only: [:show, :edit, :update, :destroy]

  def index
    @mods = Mod.all
  end

  def show

  end

  private



# array.select do |number|
# end.map do |number|
#   sfdjklfdsjkl
# end
#   end


  def get_mod
    @mod = Mod.find(params[:id])
  end
end
