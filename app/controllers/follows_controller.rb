class FollowsController < ApplicationController

  before_action :find_follow, only: [:edit, :update, :delete]

  def update
    @follow.update(follow_params)
    redirect_to student_path(@follow.student_id)
  end

  def delete
    @follow.destroy
    redirect_to students_path
  end

  private

  def follow_params
    params.require(:follow).permit(:student_id, :mod_id)
  end

  def find_follow
    @follow = Follow.find(params[:id])
  end
end
