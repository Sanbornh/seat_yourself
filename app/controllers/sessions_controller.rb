class SessionsController < ApplicationController
  def new
  end

  def create
  	binding.pry
  	user = User.find_by_email(params[:email])
  	if user && user.authenticate(params[:password])
  		session[:user_id] = user.id
  		redirect_to reservation_path(user)
  	else
  		render :new, flash[:notice] => "Oops, something went wrong."
  	end
  end

  def destroy
  end

  
end
