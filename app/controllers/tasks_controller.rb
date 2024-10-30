class TasksController < ApplicationController
  before_action :set_task, only: %i[edit update destroy]

  # List all tasks
  def index
    @tasks = Task.all
  end

  # Show form to create a new task
  def new
    @task = Task.new
  end

  # Create a new task
  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to tasks_path, notice: 'Task was successfully created.'
    else
      render :new
    end
  end

  # Edit an existing task
  def edit
  end

  # Update an existing task
  def update
    if @task.update(task_params)
      redirect_to tasks_path, notice: 'Task was successfully updated.'
    else
      render :edit
    end
  end

  # Delete a task
  def destroy
    @task.destroy
    redirect_to tasks_path, notice: 'Task was successfully deleted.'
  end

  private

  # Strong parameters
  def task_params
    params.require(:task).permit(:title, :completed)
  end

  def set_task
    @task = Task.find(params[:id])
  end
end
