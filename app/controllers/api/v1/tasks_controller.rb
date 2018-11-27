module Api
  module V1
    class TasksController < ApplicationController

      def index
        @tasks = Task.all
        render json: @tasks
      end

      def show
        @task = Task.find(params[:id])
        render json: @task
      end

      def create
        @task = Task.new(task_params)
        if @task.save
          render json: @task, status: :accepted
        else
          render json: {errors: "ya effed up"}, status: :unprocessible_entity
        end
      end

      def update
        @task = Task.find(params[:id])
        @task.update(task_params)
        render json: @task
      end

      def destroy
        @task = Task.find(params[:id])
        @task.destroy
      end

      private

      def task_params
        params.permit(:list_id, :priority, :description, :done)
      end

    end
  end
end
