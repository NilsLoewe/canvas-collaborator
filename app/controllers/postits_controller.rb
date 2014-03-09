class PostitsController < ApplicationController

  before_filter :load_model, :only => [:create, :destroy, :show, :update, :edit]
  before_filter :load_postit, :only => [:destroy, :show, :update, :edit]

  def new
    @postit = Postit.new
    @canvasfield = CanvasField.find(params[:field])
  end

  def create
    if current_model?
      @postit = Postit.new(params[:postit])
      @postit.save
      redirect_to :back
    else
      redirect_to root_path
    end
  end

  def edit
    @postit = Postit.find(params[:id])
  end

  def update
    if @postit.update_attributes(params[:postit])
      redirect_to :back
    else
      redirect_to root_path
    end
  end

  private

    def load_postit
      @postit = Postit.find(params[:id])
    end
end
