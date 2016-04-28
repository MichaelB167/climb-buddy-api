# climbs controller
class ClimbsController < ApplicationController
  before_action :set_climb, only: [:update, :destroy]

  # GET /climbs
  # GET /climbs.json
  def index
    @climbs = Climb.all

    render json: @climbs
  end

  # GET /climbs/1
  # GET /climbs/1.json
  def show
    render json: @climb
  end

  # POST /climbs
  # POST /climbs.json
  def create
    @climb = Climb.new(climb_params)

    if @climb.save
      render json: @climb, status: :created, location: @climb_params
    else
      render json: @contact.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /climbs/1
  # PATCH/PUT /climbs/1.json
  def update
    @climb = Climb.find(params[:id])

    if @climb.update(climb_params)
      head :no_content
    else
      render json: @climb.errors, status: :unprocessable_entity
    end
  end

  # DELETE /climbs/1
  # DELETE /climbs/1.json
  def destroy
    @climb.destroy

    head :no_content
  end

  private

  def set_climb
    @climb = Climb.find(params[:id])
  end

  def climb_params
    params.require(:climbs).permit(:route_type, :route_grade,
                                   :hold_type_of_fall, :fall_notes)
  end
end
