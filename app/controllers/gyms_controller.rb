# gyms controller
class GymsController < ProtectedController
  before_action :set_gym, only: [:update, :destroy]

  # GET /gyms
  # GET /gyms.json
  def index
    @gyms = current_user.gyms

    render json: @gyms
  end

  # GET /gyms/1
  # GET /gyms/1.json
  def show
    render json: Gym.find(params[:id])
  end

  # POST /gyms
  # POST /gyms.json
  def create
    @gym = current_user.gyms.build(gym_params)

    if @gym.save
      render json: @gym, status: :created, location: @gym
    else
      render json: @contact.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /gyms/1
  # PATCH/PUT /gyms/1.json
  def update
    @gym = Gym.find(params[:id])

    if @gym.update(gym_params)
      head :no_content
    else
      render json: @gym.errors, status: :unprocessable_entity
    end
  end

  # DELETE /gyms/1
  # DELETE /gyms/1.json
  def destroy
    @gym.destroy

    head :no_content
  end

  private

  def set_gym
    @gym = current_user.gyms.find(params[:id])
  end

  def gym_params
    params.require(:gym).permit(:name, :location, :date_visited)
  end

  private :set_gym, :gym_params
end
