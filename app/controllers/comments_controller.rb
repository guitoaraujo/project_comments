class CommentsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_project, only: %i[create destroy]

  def create
    Comment.create(comment_params)

    redirect_to project_url(project_id: @project.id)
  end

  def destroy
    comment = Comment.find(params[:id])
    comment.delete

    redirect_to project_url(project_id: @project.id)
  end

  private

  def comment_params
    params.permit(:text, :project_id).merge(user_id: current_user.id)
  end

  def set_project
    @project = Project.find(comment_params[:project_id])
  end
end
