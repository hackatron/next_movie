class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  after_action :set_access_control_headers

  def set_access_control_headers
    headers['Access-Control-Allow-Origin'] = 'http://api.next-movie.herokuapp.com:3000/'
    headers['Access-Control-Request-Method'] = '*'
  end
end
