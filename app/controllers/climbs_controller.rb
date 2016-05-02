# climbs controller
class ClimbsController < ProtectedController
  before_action :set_climb, only: [:update, :destroy]

  # GET /climbs
  # GET /climbs.json
  def index
    @climbs = current_user.climbs

    render json: @climbs
  end

  # GET /climbs/1
  # GET /climbs/1.json
  def show
    render json: Climb.find(params[:id])
  end

  # POST /climbs
  # POST /climbs.json
  def create
    @climb = current_user.climbs.build(climb_params)

    if @climb.save
      render json: @climb, status: :created, location: @climb_params
    else
      render json: @contact.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /climbs/1
  # PATCH/PUT /climbs/1.json
  def update
    if @climb.update(climb_params)
      render json: @climb, status: :ok
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
    @climb = current_user.climbs.find(params[:id])
  end

  def climb_params
    params.require(:climb).permit(:route_type, :route_grade,
                                  :hold_type_of_fall, :fall_notes)
  end

  private :set_climb, :climb_params
end
