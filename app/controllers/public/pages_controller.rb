class Public::PagesController < ApplicationController

  layout "public/main"

  def show
    @user = session[:userinfo]['info'] if session && session[:userinfo]
  	@page = params[:page].downcase
    puts "*** pages::show #{@page} user=#{@user}"

  	template = "public/pages/#{@page}"
	  exists = lookup_context.template_exists?(template)
    if exists
    	render template: template
    else
    	redirect_to error_url
    end
  end

  def error
  	@page = 'error'
  	render template: "public/pages/error", :locals => {:page => 'error'}
  end

  def home
  	@page = 'home'
  	render template: "public/pages/home", :locals => {:page => 'home'}
  end

end
