module Api
  module V1
    class UsersController < ApplicationController

      def index
        @users = User.all
        render json: @users

      end

      def show
        @user = User.find(params[:id])
        render json: @user.index_json
      end

      def create
        @user = User.new(user_params)
        if @user.save
          render json: @user, status: :accepted
        else
          render json: {errors: "ya effed up"}, status: :unprocessible_entity
        end
      end

      private

      def user_params
        params.permit(:email)
      end

    end
  end
end
