class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def rescue_action_in_public(exception)
    case exception
    when ActionController::RoutingError, ActionController::UnknownAction
      render :template => 'rescues/not_found', :status => 404
    else
      super(exception)
    end
  end

end
