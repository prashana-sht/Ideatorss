class IdeasController < ApplicationController
  def index
    @ideas = Idea.all
  end

  def create
    @idea = Idea.create(description: params[:idea][:description], author: params[:idea][:author])
    redirect_to root_path
  end

  private

  def idea_params
    params.require(:idea).permit(:description, :author)
  end

  def edit
  end
  
end
