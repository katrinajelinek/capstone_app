class Api::TagsController < ApplicationController
  def index
    @tags = Tag.all
    render "index.json.jb"
  end

  def show
    @tag = Tag.find(params[:id])
    render "show.json.jb"
  end
end
