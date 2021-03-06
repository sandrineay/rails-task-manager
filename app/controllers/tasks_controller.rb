class TasksController < ApplicationController
  before_action :set_task, only: [ :edit, :update, :destroy]

  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    # Create task
    Task.create(task_params)
    # redirect to the index of tasks
    redirect_to tasks_path
  end

  def edit
  end

  def update
    @task.update(task_params)
    redirect_to tasks_path
  end

  def destroy
    @task.destroy
    redirect_to tasks_path
  end

  private

  def set_task
    @task = Task.find(params[:id])
  end

  def task_params
    # Filtering/Whitelisting the params that come in from the form
    params.require(:task).permit(:title, :description, :deadline, :priority)
  end
end
