class CommentsController < ApplicationController

  before_filter :load_model, :only => [:create, :index]
  before_filter :load_comment, :only => [:destroy, :show, :update, :edit]
  before_filter :load_username, :only => [:new]

  def create
    if current_model?
      @comment = Comment.new(params[:comment])
      @comment.save
      redirect_to :back
    else
      redirect_to root_path
    end
  end

  def index
    unless params[:fieldid]
      @comments = @businessmodel.comments
    else
      @field = CanvasField.find(params[:fieldid])
      @comments = @field.comments
    end

  end

  private

    def load_comment
      @comment = Comment.find(params[:id])
    end
end
