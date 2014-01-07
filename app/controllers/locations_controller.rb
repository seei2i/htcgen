class LocationsController < ApplicationController
  # before_filter :authenticate_user!
  before_filter :find_page, only: [:show, :edit, :update, :destroy]

  def index
    @locations = Location.all
    @locationss = Location.order(:name)
    respond_to do |format|
      format.html
      format.csv { send_data @locationss.to_csv, :filename => 'LOCATIONS.csv' }
    end
  end

  def new
  end

  def create
    @location = Location.new(params[:location])
    @location.save
    redirect_to locations_path, notice: "Location added sucessfully."
  end

  def edit
  end

  def import
    Location.import(params[:file])
    redirect_to locations_path, notice: "Locations imported sucessfully."
  end

  def show
    @cityname = @location.city.name
    @locations = Location.all
    @hash = Gmaps4rails.build_markers(@locations) do |location, marker|
      marker.lat location.latitude
      marker.lng location.longitude
      marker.title location.name
      marker.picture({:picture => "http://locations.healthtestingcenters.com/images/mapIconSm.gif",
                      :width => 35,
                      :height => 35})
    end
  end

  def update
    if @location.update_attributes(params[:location])
      redirect_to locations_path, :notice => "Location updated."
    else
      redirect_to locations_path, :alert => "Unable to update Location."
    end
  end

  def destroy
    @location.destroy
    redirect_to locations_path, :notice => "Location deleted sucessfully."
  end

  def remove_all
    Location.delete_all
    flash[:notice] = "You have sucessfully removed all locations!"
    redirect_to locations_path
  end

private

  def find_page
    @location = Location.find_by_slug!(params[:id])
  end

end