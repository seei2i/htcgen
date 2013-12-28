class CitiesController < ApplicationController
  # before_filter :authenticate_user!
  before_filter :find_page, only: [:show, :edit, :update, :destroy]

  def new
  end

  def create
    @city = City.new(params[:city])
    @city.save
    redirect_to cities_path
  end
  
  def edit
  end

  def index
    @cities = City.all
    @states = State.all
    @citiess = City.order(:name)
    respond_to do |format|
      format.html
      format.csv { send_data @citiess.to_csv, :filename => 'CITYSTATE.csv' }
    end
  end

  def import
    City.import(params[:file])
    redirect_to cities_path, notice: "Cities imported sucessfully."
  end

  def show
    @locations = Location.where(city_id: @city.id)
  end

  def update
    if @city.update_attributes(params[:city])
      redirect_to cities_path, :notice => "City sucessfully updated."
    else
      redirect_to cities_path, :alert => "Unable to update city."
    end
  end

  def destroy
    @city.destroy
    redirect_to cities_path, :notice => "City deleted sucessfully."
  end

  # def remove_all
  #   City.delete_all
  #   flash[:notice] = "You have sucessfully removed all cities!"
  #   redirect_to cities_path
  # end

private

  def find_page
    @city = City.find_by_slug!(params[:id])
  end

end
