class UsersController < ApplicationController

 # before_action :logged_in_user, only: [:index, :edit, :update, :delete]
 # before_action :correct_user,   only: [:edit, :update]

  def index
    @users = User.all.paginate(:page => params[:page])

  end

  def show
    @users = User.find(params[:id])

  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      # flash[:success] = "Welcome to the Writers Bench"
      redirect_to users_path #@users
    else
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      # flash[:success] = "Profile updated"
      redirect_to users_path
    else
      render 'edit'
    end
  end

  def destroy


  end


  private

    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end

    # Before filters

    # Confirms a logged-in user.
    def logged_in_user
      # unless logged_in
        store_location
      #   flash[:danger] = "Please log in."
        redirect_to login_url
      end
    end
    def correct_user
    @user = User.find(params[:id])
     redirect_to(root_url) unless current_user?(@user)
  end


