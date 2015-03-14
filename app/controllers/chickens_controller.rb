class ChickensController < ApplicationController
  def index
    @chickens = Chicken.all
  end

  def new
    @chicken = Chicken.new
  end

  def create
    @chicken = Chicken.new(chicken_params)
    if @chicken.save
      flash[:notice] = "Chicken successfully created!"
      redirect_to chickens_path
    else
      render :new
    end
  end

  def show
    @chicken = Chicken.find(params[:id])
  end

  def destroy
    chicken = Chicken.find(params[:id])
    flash[:notice] = "That chicken was delicious!"
    chicken.destroy
    redirect_to chickens_path
  end

  def chicken_params
    params.require(:chicken).permit(:name, :eggs_per_week)
  end
end
