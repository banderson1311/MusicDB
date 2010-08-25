# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  include Clearance::Authentication
  helper :all # include all helpers, all the time  
  protect_from_forgery # See ActionController::RequestForgeryProtection for details
  
  #authenticate on create, update, delete
  before_filter :authenticate
  
  
  #use stamper to record user making changes
  include Userstamp

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
  
protected

  #check if user is admin
  def authorize_admin
    if !current_user.admin?
      flash[:notice] = "You must be an administrator to access this page"        
      redirect_to(:action => :index)
    end
  end

end
