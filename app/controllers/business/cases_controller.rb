class Business::CasesController < BusinessController

  def index
    @cases = Case.where(:place_id => @place.id)

    p @cases

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cases }
    end
  end

  def show
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @case }
    end
  end

end
