class Api::PostsController < ApplicationController
  protect_from_forgery with: :exception
  skip_before_action :verify_authenticity_token

  def index
    @posts = Post.all
    render json: @posts
  end

  def new
    Post.find_or_create_by(
      title: "title",
      description: "description",
      latitude: 0,
      longitude: 0,
      picture: params['uploadFile']
    ).tap(&:save)
    render json: { "status" => '200' }
  end
end
