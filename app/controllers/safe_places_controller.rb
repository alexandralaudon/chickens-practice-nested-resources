class SafePlacesController < ApplicationController
  before_action :ensure_authenticated

  def index
    @safeplaces = SafePlace.all
  end

  def new
    @safe_place = SafePlace.new
  end

  def create
    @safe_place = SafePlace.new(safe_place_params)
    if @safe_place.save
      flash[:notice] = "New safe place added!  Any escape plans?"
      redirect_to safe_places_path
    else
      render :new
    end
  end

  def show
    @safe_place = SafePlace.find(params[:id])
    @escape_plans = @safe_place.escape_plans
  end


  def safe_place_params
    params.require(:safe_place).permit(:name, :location)
  end

end
