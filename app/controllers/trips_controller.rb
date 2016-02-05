class TripsController < ApplicationController
  def new
    @trip = Trip.new
  end

  def index
    @trip = Trip.all
  end

  def create
    @trip = Trip.new(transformed_trip_params)

    if @trip.save
      redirect_to trips_path
    else
      render 'new'
    end
  end

  private

    def trip_params
      params.require(:trip).permit(:name, :start_date, :end_date)
    end

    def transformed_trip_params
      Transformers::TripTransformer.new(trip_params).transform
    end
end
