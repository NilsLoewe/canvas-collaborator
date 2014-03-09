class CanvasFieldsController < ApplicationController

  before_filter :load_model, :only => [:create, :destroy, :show, :update, :edit]
  before_filter :load_field, :only => [:destroy, :show, :update, :edit]

  def show
  end

  private

    def load_field
      @canvasfield = CanvasField.find(params[:id])
    end
end
