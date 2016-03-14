class UsersController < ApplicationController
  before_action :admin_user, only: [:index, :update, :destroy, :show, :new]
  before_action :logged_in_user, only: [:edit, :update]
  def show
    @user = User.find(params[:id])
    @photos = Photo.where("user_id = ?", params[:id])
  end

  def new
    @user = User.new
  end

  def index
    @users = User.order(:created_at)
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = "Success !"
      redirect_to @user
    else
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:success] = "Profile updated"
      redirect_to @user
    else
      render 'edit'
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    flash[:success] = "The user was vanished."
    redirect_to users_path
  end

  private

  def user_params
    params.require(:user).permit(:name, :password,
    :password_confirmation)
  end

end
