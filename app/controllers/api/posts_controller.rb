class Api::PostsController < ApplicationController
  before_action :authenticate_user, except: [:index, :show]

  def index
    @posts = Post.all
    render "index.json.jb"
  end

  def create
    @post = Post.new(
      plant_type: params[:plant_type],
      trade_for: params[:trade_for],
      description: params[:description],
      location: params[:location],
      image_url: params[:image_url],
      user_id: current_user.id,
    )
    if @post.save
      eval(params[:tag_ids]).each do |tag_id|
        PostTag.create(post_id: @post.id, tag_id: tag_id)
      end
      render "show.json.jb"
    else
      render json: { errors: @post.errors.full_messages }
    end
  end

  def show
    @post = Post.find(params[:id])
    render "show.json.jb"
  end

  def update
    @post = Post.find(params[:id])
    @post.plant_type = params[:plant_type] || @post.plant_type
    @post.trade_for = params[:trade_for] || @post.trade_for
    @post.description = params[:description] || @post.description
    @post.location = params[:location] || @post.location
    @post.image_url = params[:image_url] || @post.image_url

    if @post.save
      @post.post_tags.destroy_all
      #remove eval on frontend build
      eval(params[:tag_ids]).each do |tag_id|
        PostTag.create(post_id: @post.id, tag_id: tag_id)
      end
      render "show.json.jb"
    else
      render json: { errors: @post.errors.full_messages }
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    render json: { message: "Your post was successfully deleted" }
  end
end
