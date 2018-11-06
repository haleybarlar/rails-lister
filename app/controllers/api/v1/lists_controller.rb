module Api
  module V1
    class ListsController < ApplicationController

      def index
        @lists = List.paginate(:page => params[:page])
        render json: {
          lists: @lists,
          page: @lists.current_page,
          pages: @lists.total
        }
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

      def destroy
        @list = List.find(params[:id])
        @list.destroy
      end

      private

      def list_params
        params.permit(:user_id, :kind)
      end

    end
  end
end
