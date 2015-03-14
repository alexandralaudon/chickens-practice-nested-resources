class SafePlacesController < ApplicationController
  def index
    @safeplaces = SafePlace.all
  end

end
