class LessionsController < ApplicationController
  before_action :set_lession, only: [:show, :update, :destroy]

  # GET /lessions
  def index
    @lessions = Lession.all

    render json: @lessions
  end

  # GET /lessions/1
  def show
    render json: @lession
  end

  # POST /lessions
  def create
    @lession = Lession.new(lession_params)

    if @lession.save
      render json: @lession, status: :created, location: @lession
    else
      render json: @lession.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /lessions/1
  def update
    if @lession.update(lession_params)
      render json: @lession
    else
      render json: @lession.errors, status: :unprocessable_entity
    end
  end

  # DELETE /lessions/1
  def destroy
    @lession.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lession
      @lession = Lession.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def lession_params
      params.require(:lession).permit(:courses_id, :day, :startTime, :duration)
    end
end
