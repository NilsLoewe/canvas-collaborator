class StaticPagesController < ApplicationController

  before_filter :load_model

  def home
  end

  def help
  end

  def about
  end

end
