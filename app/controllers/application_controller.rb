
# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.



class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  protect_from_forgery # See ActionController::RequestForgeryProtection for details


  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
  #before_filter :authenticate_user!
   ActionController::Base.cookie_verifier_secret = 'b0f11e2a44646d002dc238ffb98a0eb4e053a2093f63b3452d94904383b738ed7ae1f2af3f2a2d7c1abf9272644e3ab498bb86ae3227cc7c031042587c4e2ba5';
   before_filter :authenticate_user!
end

