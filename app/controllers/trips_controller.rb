class TripsController < ApplicationController
  def new
    @trip = Trip.new
  end

  # def edit
  #   @trip = Trip.find(params[:id])
  # end

  # def show
  #   @trip = Trip.find(params[:id])
  # end

  def index
    @trip = Trip.all
  end

  def create
    @trip = Trip.new(transformed_trip_params)

    if @trip.save
      binding.pry
      #do something
    else
      #do something
    end
  end

  # def update
  #   @trip = Trip.find(params[:id])

  #   if @trip.update_attributes(params[:trip])
  #     #do something
  #   else
  #     #do something
  #   end
  # end

  # def destroy
  #   @trip = Trip.find(params[:id])
  #   @trip.destroy
  #   #redirect_to somewhere
  # end
  private

    def trip_params
      params.require(:trip).permit(:name, :start_date, :end_date)
    end

    def transformed_trip_params
      Transformers::TripTransformer.new(trip_params).transform
    end
end
