class ModsController < ApplicationController
  def index
    @mods = Mod.all
  end

  def show 
  end

end
