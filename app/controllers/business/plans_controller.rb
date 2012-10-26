class Business::PlansController < BusinessController

  def index
    @plans = Plan.where(:place_id => @place.id)

    p @plans

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @plans }
    end
  end

  def show
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @plan }
    end
  end

end
