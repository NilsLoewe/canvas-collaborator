class CanvasFieldsController < ApplicationController

  before_filter :load_model, :only => [:create, :destroy, :show, :update, :edit]
  before_filter :load_field, :only => [:destroy, :show, :update, :edit]
  before_filter :load_username, :only => [:show]

  def show
    @comment = Comment.new
    @type = @canvasfield.class
    @cid = @canvasfield.id
    @comments = @canvasfield.comments

    @postit = Postit.new
  end

  private

    def load_field
      @canvasfield = CanvasField.find(params[:id])
    end
end
