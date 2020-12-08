class TodosController < ApplicationController
  before_action :project_find
  before_action :set_todo, only: [:update, :show, :create]

  def index
    @todos = @project.todos
    render json: @todos
  end

  def show
    render json: @todo
  end

  def update
    @todo.update(todo_params)
  end

  def create
    @todo = Todo.create(todo_params)
  end

  private

  def todo_params
    params.require(:Todo).permit(:text, :isCompleted, :project_id)
  end

  def set_todo
    @todo = Todo.find(params[:id])
  end

  def project_find
    @project = Project.find(params[:project_id])
  end

end
