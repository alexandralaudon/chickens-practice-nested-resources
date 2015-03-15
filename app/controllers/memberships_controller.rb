class MembershipsController < ApplicationController

  def create
    @escape_plan = EscapePlan.find(params[:escape_plan_id])
    @membership = @escape_plan.memberships.new(membership_params)
    if @membership.save
      flash[:notice] = "We'll notify #{@membership.chicken.name} that s/he has been successfully added to your escape plan."
      redirect_to @escape_plan
    else
      render :escape_plans#show
    end
  end

  def destroy
    @escape_plan = EscapePlan.find(params[:escape_plan_id])
    membership = @escape_plan.memberships.find(params[:id])
    flash[:notice] = "#{membership.chicken.name} was a delicious chicken!"
    membership.destroy
    redirect_to @escape_plan
  end


  def membership_params
    params.require(:membership).permit(:chicken_id, :escape_plan_id)
  end
end
