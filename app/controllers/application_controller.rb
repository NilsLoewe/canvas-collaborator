class ApplicationController < ActionController::Base
  protect_from_forgery

  def current_model?
    session[:model_id].present?
  end

  def load_model
    @businessmodel = Businessmodel.find(session[:model_id]) if current_model?
  end

end
