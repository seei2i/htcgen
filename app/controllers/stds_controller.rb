class StdsController < ApplicationController
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
    @state = State.find_by_id(@city.state_id)
    @percent_state = '%.2f' % (@city.population.to_f / @state.population.to_f)
    @percent_prostate = '%.2f' % (@city.prostate_num.to_f / @city.all_cancers_num.to_f)
    @percent_coronary = '%.2f' % (@city.coronary_num.to_f / @city.total_d_num.to_f)
    @percent_cancer = '%.2f' % (@city.all_cancers_num.to_f / @city.total_d_num.to_f)
   
    @stdata = @city.std_stats.split(",")
    @herpes = @stdata[15].to_f + @stdata[16].to_f
    @aids = @stdata[17].to_f + @stdata[18].to_f

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

  def remove_all
    City.delete_all
    flash[:notice] = "You have sucessfully removed all cities!"
    redirect_to cities_path
  end

private

  def find_page
    @city = City.find_by_slug!(params[:id])
  end


end
