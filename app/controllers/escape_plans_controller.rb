class EscapePlansController < ApplicationController
  def new
    @safe_place = SafePlace.find(params[:safe_place_id])
    @escape_plan = @safe_place.escape_plans.new
  end

  def create
    @safe_place = SafePlace.find(params[:safe_place_id])
    @escape_plan = @safe_place.escape_plans.new(escape_plan_params)
    if @escape_plan.save
      flash[:notice] = "Your escape plan has been created!"
      redirect_to @safe_place
    else
      redirect_to :new
    end
  end

  def show
    @escape_plan = EscapePlan.find(params[:id])
    @membership = @escape_plan.memberships.new
    @memberships = @escape_plan.memberships
  end


  def escape_plan_params
    params.require(:escape_plan).permit(:description, :first_stop, :disguise, :safe_place_id)
  end
end
