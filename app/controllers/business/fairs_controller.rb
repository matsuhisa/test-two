class Business::FairsController < BusinessController

  def index
    @fairs = Fair.where(:place_id => @place.id)
    #@fairs = Fair.all
    p @fairs
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @fairs }
    end
  end

  # GET /places/1
  # GET /places/1.json
  def show
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @fair }
    end
  end

end
