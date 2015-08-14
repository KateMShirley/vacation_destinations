class SessionsController < ApplicationController
  #get
  def login
    #form to login

  end
#post
  def confirmation
    #show user message regarding login status
    puts"------------"
    puts puts
    puts"--------------"
    @user = User.find_by_email(params[:email])

    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect '/'

    else
      @message = 'invalid'
      render '/sessions/login'
  end
#get
  def logout
    #logout
    session[:user_id] = nil
    reidirect_to '/users/login'
  end
end
