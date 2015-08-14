class UsersController < ApplicationController

  #get
  def signup
    #render a view and let the user register
    #my only job...is to render a form! yay i have a job
  end
  #POST
  def confirmation
    #debugging
    # puts "---------users#confirmation---------"
    # puts user_params
    # puts "---------end users#confirmation---------"
    #post request that handles registration

    @user = User.new(user_params)
    if @user.save
      #thanks! you're in!
      session[:user_id] = @user.id

      # Destination.where(:user_id => session[:user_id].to_i)
    else
      @message= 'User account exists or passwords do not match'
      render 'users/signup'
      #womp womp error msg
      @message = 'User account exitst or passwords do not match.'
      render 'users/singup'
    end

  end


private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end


end
