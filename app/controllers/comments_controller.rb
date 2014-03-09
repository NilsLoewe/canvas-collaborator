class CommentsController < ApplicationController

  before_filter :load_model, :only => [:create, :destroy, :show, :update, :edit]
  before_filter :load_comment, :only => [:destroy, :show, :update, :edit]

  def new
    @comment = Comment.new
    @type = params[:commentable_type]
    @cid = params[:commentable_id]
    #@canvasfield = CanvasField.find(params[:field])
  end

  def create
    if current_model?
      @comment = Comment.new(params[:comment])
      @comment.save
      redirect_to :back
    else
      redirect_to root_path
    end
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def update
    if @comment.update_attributes(params[:comment])
      redirect_to :back
    else
      redirect_to root_path
    end
  end

  private

    def load_comment
      @comment = Comment.find(params[:id])
    end
end
