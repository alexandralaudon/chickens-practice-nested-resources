class EscapePlansController<ApplicationController
  before_action :ensure_authenticated

  def new
    @safe_place = SafePlace.find(params[:safe_place_id])
    @escape_plan = @safe_place.escape_plans.new
  end

  def create
    @safe_place = SafePlace.find(params[:safe_place_id])
    @escape_plan = EscapePlan.new(escape_plan_params.merge(safe_place_id: @safe_place.id))
    if @escape_plan.save
      flash[:notice] = "Your escape plan has been created!"
      redirect_to @safe_place
    else
      render :new
    end

  end

  def show
    @escape_plan = EscapePlan.find(params[:id])
    @membership = @escape_plan.memberships.new
  end


  def escape_plan_params
    params.require(:escape_plan).permit(:description, :first_stop, :disguise, :safe_place_id)
  end
end
