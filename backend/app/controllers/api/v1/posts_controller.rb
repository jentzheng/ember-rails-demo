module Api::V1
  class PostsController < ApplicationController
    def index
      @posts = Post.all.includes(:user, :featured, :images, :audios)
      render json: @posts, include: ['images', 'featured', 'audios']
    end

    def show
      @post = Post.includes(:user, :featured, :images, :audios).find(params[:id])
      render json: @post, include: ['images', 'featured', 'audios']
    end
  end
end