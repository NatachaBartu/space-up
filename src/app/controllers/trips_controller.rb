class TripsController < ApplicationController
  before_action :set_trip, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :authorise_user, only: [:edit, :update, :destroy]
  before_action :set_form_vars, only: [:new, :edit]

  # GET /trips or /trips.json
  def index
    @trips = Trip.all.includes(:planet)
  end

  # GET /trips/1 or /trips/1.json
  def show
   
  end

  # GET /trips/new
  def new
    @trip = Trip.new
  end

  # GET /trips/1/edit
  def edit
  end

  # POST /trips or /trips.json
  #create a trips
  def create
    p trip_params
    @trip = current_user.trips.new(trip_params)

    respond_to do |format|
      if @trip.save
        format.html { redirect_to @trip, notice: "Trip was successfully created." }
        format.json { render :show, status: :created, location: @trip }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @trip.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trips/1 or /trips/1.json
  def update
    respond_to do |format|
      if @trip.update(trip_params)
        format.html { redirect_to @trip, notice: "Trip was successfully updated." }
        format.json { render :show, status: :ok, location: @trip }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @trip.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trips/1 or /trips/1.json
  def destroy
    @trip.destroy
    respond_to do |format|
      format.html { redirect_to trips_url, notice: "Trip was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trip
      @trip = Trip.find(params[:id])
    end

    def authorise_user
      if current_user.id != @trip.user_id
        flash[:error] = "You're not allowed to do that"
        redirect_to trips_path
      end 
    end 

    # Only allow a list of trusted parameters through.
    def trip_params
      params.require(:trip).permit(:planet_id, :price, :sold, :cabin_id, :picture, :description)
    end

    def set_trips
      @trip = Trip.find(params[:id])
    end

    def set_form_vars
      @planets = Planet.all
      @cabins = Cabin.all
    end

end

