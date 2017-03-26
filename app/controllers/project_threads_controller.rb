class ProjectThreadsController < ApplicationController
  before_action :set_project_thread, only: [:show, :edit, :update, :destroy]

  # GET /project_threads
  # GET /project_threads.json
  def index
    @project_threads = ProjectThread.all
  end

  # GET /project_threads/1
  # GET /project_threads/1.json
  def show
  end

  # GET /project_threads/new
  def new
    @project_thread = ProjectThread.new
  end

  # GET /project_threads/1/edit
  def edit
  end

  # POST /project_threads
  # POST /project_threads.json
  def create
    @project_thread = ProjectThread.new(project_thread_params)

    respond_to do |format|
      if @project_thread.save
        format.html { redirect_to @project_thread, notice: 'Project thread was successfully created.' }
        format.json { render :show, status: :created, location: @project_thread }
      else
        format.html { render :new }
        format.json { render json: @project_thread.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /project_threads/1
  # PATCH/PUT /project_threads/1.json
  def update
    respond_to do |format|
      if @project_thread.update(project_thread_params)
        format.html { redirect_to @project_thread, notice: 'Project thread was successfully updated.' }
        format.json { render :show, status: :ok, location: @project_thread }
      else
        format.html { render :edit }
        format.json { render json: @project_thread.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /project_threads/1
  # DELETE /project_threads/1.json
  def destroy
    @project_thread.destroy
    respond_to do |format|
      format.html { redirect_to project_threads_url, notice: 'Project thread was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project_thread
      @project_thread = ProjectThread.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_thread_params
      params.require(:project_thread).permit(:user_id, :title)
    end
end
