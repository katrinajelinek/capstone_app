class Api::OffersController < ApplicationController
  before_action :authenticate_user

  def create
    @offer = Offer.new(
      post_id: params[:post_id],
      user_id: current_user.id,
      message: params[:message],
      image_url: params[:image_url],
    )
    if @offer.save
      render "show.json.jb"
    else
      render json: { errors: @offer.errors.full_messages }, status: 422
    end
  end

  def update
    @offer = Offer.find(params[:id])
    @offer.message = params[:message] || @offer.message
    @offer.image_url = params[:image_url] || @offer.image_url
    if @offer.save
      render "show.json.jb"
    else
      render json: { errors: @offer.errors.full_messages }, status: 422
    end
  end

  def destroy
    @offer = Offer.find(params[:id])
    @offer.destroy
    render json: { message: "Your offer has been successfully deleted" }
  end
end
