class SelectiveProcessesController < ApplicationController
  before_action :set_selective_process, only: [:show, :update, :destroy]

  # GET /selective_processes
  def index
    @selective_processes = SelectiveProcess.all

    render json: @selective_processes
  end

  # GET /selective_processes/1
  def show
    render json: @selective_process
  end

  # POST /selective_processes
  def create
    @selective_process = SelectiveProcess.new(selective_process_params)

    if @selective_process.save
      render json: @selective_process, status: :created, location: @selective_process
    else
      render json: @selective_process.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /selective_processes/1
  def update
    if @selective_process.update(selective_process_params)
      render json: @selective_process
    else
      render json: @selective_process.errors, status: :unprocessable_entity
    end
  end

  # DELETE /selective_processes/1
  def destroy
    @selective_process.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_selective_process
      @selective_process = SelectiveProcess.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def selective_process_params
      params.require(:selective_process).permit(:year, :schoolTerm, :startDate, :registrationDeadline, :finishDate)
    end
end
