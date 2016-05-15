class TasksController < ApplicationController
before_action :user_is_owner?, :require_login, only: [:edit, :update, :destoy]

  # GET /tasks
  def index
    @tasks = current_user.tasks
    # no se debe hacer asi, es una forma (user_id: session[:user_id])
  end

  # GET /tasks/1
  def show
    @task = Task.find(params[:id])
  end

  # GET /tasks/new
  def new
    @task = Task.new
  end

  # GET /tasks/1/edit
  def edit
  end


  # POST /tasks
  def create
    @task = Task.new(task_params)

    respond_to do |format|
      if @task.save
        format.html { redirect_to @task, notice: 'Task was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /tasks/1
  def update
    @task = Task.find(params[:id])
    respond_to do |format|
      if @task.update(task_params)
        format.html { redirect_to @task, notice: 'Task was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /tasks/1
  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    respond_to do |format|
      format.html { redirect_to tasks_url, notice: 'Task was successfully destroyed.' }
    end
  end

  private


  def require_login
    unless logged_in?
      flash[:error] = "You must be logged in to access this section"
      redirect_to new_login_url # halts request cycle
    end
end
def is_themselves?
  @user = User.find(params[:id])
  unless @user.id == current_user.id
    redirect_to current_user
  end
  end
end

    # Never trust parameters from the scary internet, only allow the white list through.
    def task_params
      params.require(:task).permit(:name, :due_date, :completed, :user_id)
    end

    def user_is_owner?
      @task = Task.find(params[:id])
      unless current_user.id == @task.user_id
        redirect_to tasks_url
      end
    end
