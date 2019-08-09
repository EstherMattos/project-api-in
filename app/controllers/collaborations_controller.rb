class CollaborationsController < ApplicationController
  before_action :set_collaboration, only: [:show, :update, :destroy]

  # GET /collaborations
  def index
    @collaborations = Collaboration.all

    render json: @collaborations
  end

  # GET /collaborations/1
  def show
    render json: @collaboration
  end

  # POST /collaborations
  def create
    @collaboration = Collaboration.new(collaboration_params)

    if @collaboration.save
      render json: @collaboration, status: :created, location: @collaboration
    else
      render json: @collaboration.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /collaborations/1
  def update
    if @collaboration.update(collaboration_params)
      render json: @collaboration
    else
      render json: @collaboration.errors, status: :unprocessable_entity
    end
  end

  # DELETE /collaborations/1
  def destroy
    @collaboration.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_collaboration
      @collaboration = Collaboration.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def collaboration_params
      params.require(:collaboration).permit(:user_id, :course_id)
    end
end
