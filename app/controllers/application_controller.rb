class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :ensure_www
  
  protected
  
  def ensure_www
    if Rails.env.production?
      if request.env['HOST'] != 'www.kioskfolio.com'
        redirect_to 'http://www.kioskfolio.com', :status => 301
      end
    end
  end
end
