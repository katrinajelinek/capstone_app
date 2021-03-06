class Api::UsersController < ApplicationController
  before_action :authenticate_user, except: [:show, :create]

  def create
    if params[:image]
      response = Cloudinary::Uploader.upload(params[:image])
      cloudinary_url = response["secure_url"]
    end
    @user = User.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
      image_url: cloudinary_url,
    )
    if @user.save
      render "show.json.jb"
    else
      render json: { errors: @user.errors.full_messages }, status: 422
    end
  end

  def show
    @user = User.find(params[:id])
    render "show.json.jb"
  end

  def update
    if params[:image]
      response = Cloudinary::Uploader.upload(params[:image])
      cloudinary_url = response["secure_url"]
    end
    @user = User.find(params[:id])
    if @user == current_user
      @user.first_name = params[:first_name] || @user.first_name
      @user.last_name = params[:last_name] || @user.last_name
      @user.email = params[:email] || @user.email
      if params[:password]
        if @user.authenticate(params[:old_password])
          @user.update!(
            password: params[:password],
            password_confirmation: params[:password_confirmation],
          )
        end
      end
      @user.image_url = cloudinary_url || @user.image_url
      if @user.save
        render "show.json.jb"
      else
        render json: { errors: @user.errors.full_messages }, status: 422
      end
    else
      render json: {}, status: :forbidden
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    render json: { message: "Your account has been successfully deleted" }
  end
end
