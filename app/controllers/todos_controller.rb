class TodosController < ApplicationController

  before_action :authenticate_user!

  def index
    @todos = current_user.todos.all
  end

  def add_to_day
    daily_plan = current_user.find_or_create_daily_plan_and_backfill(params[:date].to_date)
    todo = current_user.todos.find(params[:id])
    daily_plan.todos << todo
    redirect_to root_path
  end

  def add_to_resource
    load_resource
    todo = current_user.todos.find(params[:id])
    @resource.todos << todo
    redirect_to root_path
  end

  def remove_from_resource
    load_resource
    todo = current_user.todos.find(params[:id])
    @resource.todos.delete(todo)
    redirect_to root_path
  end

  private

  def load_resource
    resource, id = request.path.split('/')[1,2]
    @resource = resource.singularize.classify.constantize.find(id)
    # should I scope this to current_user
  end
end
