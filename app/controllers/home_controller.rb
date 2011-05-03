class HomeController < ApplicationController
require 'rubygems'
require 'net/ping'
  def index
  if session[:connected]
  	
  else
  	@pg = Pg.find(:first, :conditions => "ip = '#{request.remote_ip}'")
  	if @pg != nil
  		if @pg.autolog
  		session[:buque] = @pg.buque
  		session[:nums] = @pg.nums
  		session[:admin] = @pg.admin
  		session[:connected] = true
  		else
         redirect_to(home_login_path, :notice => 'test')
  		end
  	else
respond_to do |format|
      format.html { redirect_to(home_login_path, :notice => 'login')}
  
    end
  	end
  end
  if session[:debug]
  	if Net::Ping::External.new('1.1.1.4').ping
 	@birsetv = "fonctionne"
  	else
    	@birsetv = "ne fonctionne pas"
  	end
  end
  @ipg = request.remote_ip.split('.')
  
end
def login
@compte = ""
end
# debug
def debug
if !session[:debug] 
	session[:debug] = true
	if Net::Ping::External.new('1.1.1.4').ping
 	@birsetv = "fonctionne"
  	else
    	@birsetv = "ne fonctionne pas"
    	end
	else 
	session[:debug] = false
  	
 
end

render :update do |format| 
	format.replace_html 'blocajax', :partial => 'birsetv' 
    end
end
def deco
reset_session
respond_to do |format|
      format.html { redirect_to("/") }
      format.xml  { head :ok }
    end
end
end
