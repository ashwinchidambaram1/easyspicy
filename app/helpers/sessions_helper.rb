module SessionsHelper
	
	def log_in(user)
    	session[:user_id] = user.id
  	end

  	def current_user
    	@current_user ||= User.find_by(id: session[:user_id])
  	end


  	# Returns true if the user is logged in, false otherwise.
  	def logged_in?
    	!current_user.nil?
  	end


  	<%= link_to "Users", stub %>
  	<%= link_to "Settings", stub %>
	

end
