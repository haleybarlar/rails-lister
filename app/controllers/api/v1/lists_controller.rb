module Api
  module V1
    class ListsController < ApplicationController

      def index
        @lists = List.all
        render json: @lists
      end


      def show
        @lists = List.all
        render json: @lists
      end

    end
  end
end