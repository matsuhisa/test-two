class Business::PlacesController < BusinessController

  # GET /places
  # GET /places.json
  def index
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @places }
    end
  end

  # GET /places/1
  # GET /places/1.json
  def show
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @place }
    end
  end

  # GET /places/1/edit
  def edit
    #@place = Place.find(params[:id])
    @place_spec_masters = PlaceSpecMaster.business_edit
  end

  # PUT /places/1
  # PUT /places/1.json
  def update
    @place = Place.find(params[:id])

    respond_to do |format|
      #if @place.place_ad.update_attributes(params[:place_ad]) && @place.update_attributes(params[:place])
      if @place.update_attributes(params[:place])
        format.html { redirect_to business_places_path, notice: 'Place was successfully updated.' }
        #format.json { head :no_content }
      else
        format.html { render action: "edit" }
        #format.json { render json: @place.errors, status: :unprocessable_entity }
      end
    end
  end

end
