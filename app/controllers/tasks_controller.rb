class TasksController < ApplicationController
  respond_to :json

  def index
    respond_with tasks
  end

  def show
    respond_with task
  end


  def new
    respond_with task
  end

  def create
    task.save
    respond_with task
  end


  def edit
    respond_with task
  end

  def update
    task.update_attributes task_params
    respond_with task
  end


  def destroy
    task.destroy
    respond_with task
  end



  private

  def task_params
    params.require(:task).permit(:name, :is_done, :minutes_estimated_to_complete, :list_id)
  end


  def tasks
    @tasks ||= if params.has_key? :ids
      Task.where(id: params[:ids])
    else
      Task.scoped
    end
  end

  def task
    @task ||= if params.has_key? :id
      Task.find params[:id]
    else
      Task.new task_params
    end
  end
end
