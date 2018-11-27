module Api
  module V1
    class ListsController < ApplicationController

      def index
        @lists = List.all
        render json: @lists
      end

      def show
        @list = List.find(params[:id])
        render json: @list
      end

      def create
        @list = List.new(list_params)
        if @list.save
          render json: @list, status: :accepted
        else
          render json: {errors: "ya effed up"}, status: :unprocessible_entity
        end
      end

      def update
        @list = List.find(params[:id])
        @list.update(list_params)
        render json: @list
      end

      def destroy
        @list = List.find(params[:id])
        @list.destroy
        # byebug
      end

      private

      def list_params
        params.permit(:user_id, :kind, :done, :time_completed)
      end

    end
  end
end
