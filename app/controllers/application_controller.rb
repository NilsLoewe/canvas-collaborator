class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :current_model?

  def current_model?
    session[:model_id].present?
  end

  def load_model
    @businessmodel = Businessmodel.find(session[:model_id]) if current_model?
  end

  def load_username
    if cookies[:username]
      @username = cookies[:username]
    else
      @username = "unnamed"
    end
  end
end
