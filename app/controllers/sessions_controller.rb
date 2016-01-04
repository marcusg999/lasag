class SessionsController < ApplicationController

 #return a new user for our form inside the 'new' view
  def new
      @user = User.new
  end
def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to user
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
end

def destroy
    session[:user_id] = nil
    redirect_to user_path
    debugger

  end
end

private

    def user_params
      params.require(:user).permit(:email,:password)
    end



