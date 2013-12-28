class StatesController < ApplicationController
  # before_filter :authenticate_user!
  before_filter :find_page, only: [:show, :edit, :update, :destroy]

  def index
  	@states = State.all
    @statess = State.order(:name)
    respond_to do |format|
      format.html
      format.csv { send_data @statess.to_csv, :filename => 'STATEPAGE.csv' }
    end
  end

  def new
  end

  def create
    @state = State.new(params[:state])
    @state.save
    redirect_to states_path, notice: "State added sucessfully."
  end

  def edit
  end

  def import
  	State.import(params[:file])
    redirect_to states_path, notice: "State(s) imported sucessfully."
  end

  def show

    @cities = City.where(state_id: @state.id)
  end

  def update
    if @state.update_attributes(params[:state])
      redirect_to states_path, :notice => "State updated."
    else
      redirect_to states_path, :alert => "Unable to update state."
    end
  end

  def destroy
    @state.destroy
    redirect_to states_path, :notice => "State deleted sucessfully."
  end

  # def remove_all
  #   State.delete_all
  #   flash[:notice] = "You have sucessfully removed all states!"
  #   redirect_to states_path
  # end

private

  def find_page
    @state = State.find_by_slug!(params[:id])
  end

end
