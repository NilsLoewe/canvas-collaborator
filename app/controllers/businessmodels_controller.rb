class BusinessmodelsController < ApplicationController

  def new
    @businessmodel = Businessmodel.new
    @businessmodel.save
    redirect_to @businessmodel
  end

  def show
  end

end
