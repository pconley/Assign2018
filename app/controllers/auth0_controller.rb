class Auth0Controller < ApplicationController

  include SessionHelper

  def callback
    # This stores all the user information that came from 
    # Auth0 and the Identitp Provider
    session[:userinfo] = request.env['omniauth.auth']
    puts "session = #{session[:userinfo]}"
    # Redirect to the URL you want after successful auth
    redirect_to '/pages/profile'
  end

  def logout
  	url = logout_url.to_s
  	puts "*** logut::logout #{url}"
    reset_session
    redirect_to url
  end

  def failure
    # show a failure page or redirect to an error page
    @error_msg = request.params['message']
  end

end
