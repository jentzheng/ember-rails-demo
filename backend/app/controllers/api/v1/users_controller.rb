module Api::V1
  class UsersController < ApplicationController
    def index
      @users = User.all.includes(:posts, :avatar, :address)
      render json: @users
    end

    def show
      @user = User.includes(:avatar, :user_profile, :address).find(params[:id])
      render json: @user
    end
  end
end