class Api::UsersController < ApplicationController
  before_action :authenticate_user, except: :show

  def create
    @user = User.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
    )
    if @user.save
      render "show.json.jb"
    else
      render json: { errors: @user.errors.full_messages }
    end
  end

  def show
    @user = User.find(params[:id])
    render "show.json.jb"
  end

  def update
    @user = User.find(params[:id])
    @user.first_name = params[:first_name] || @user.first_name
    @user.last_name = params[:last_name] || @user.last_name
    @user.email = params[:email] || @user.email
    @user.password = params[:password] || @user.password
    @user.password_confirmation = params[:password_confirmation] || @user.password_confirmation
    if @user.save
      render "show.json.jb"
    else
      render json: { errors: @user.errors.full_messages }
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    render json: { message: "Your account has been successfully deleted" }
  end
end
