class HomeController < ApplicationController
  
  before_filter :cache_actions
  
  def cache_actions
    response.headers['Cache-Control'] = 'public, max-age=300'
  end
  
  def new_index
    render :layout => "home"
  end
  
end
