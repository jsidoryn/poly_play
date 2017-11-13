class TodosController < ApplicationController

  before_action :authenticate_user!

  def index
    @todos = Todo.all
  end

  def add_to_resource
    load_resource
    todo = Todo.find(params[:id])
    @resource.todos << todo
    redirect_to root_path
  end

  def remove_from_resource
    load_resource
    todo = Todo.find(params[:id])
    @resource.todos.delete(todo)
    redirect_to root_path
  end

  private

  def load_resource
    resource, id = request.path.split('/')[1,2]
    @resource = resource.singularize.classify.constantize.find(id)
  end
end
