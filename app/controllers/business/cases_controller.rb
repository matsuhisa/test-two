class Business::CasesController < BusinessController

  def index
    @cases = Case.newer.where(:place_id => @place.id)

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

  def edit
    @case = Case.find(params[:id])
  end

  def update
    @case = Case.find(params[:id])

    year  =  params[:case]['wedding_datetime(1i)']
    month =  params[:case]['wedding_datetime(2i)']
    day   =  params[:case]['wedding_datetime(3i)']

    wedding_date = Time.local(year, mon=month, day=day)

    params[:case]['wedding_date'] = wedding_date.to_i 
    params[:case].delete('wedding_datetime(1i)')
    params[:case].delete('wedding_datetime(2i)')
    params[:case].delete('wedding_datetime(3i)')

    respond_to do |format|
      if @case.update_attributes(params[:case])
        format.html { redirect_to business_cases_path, notice: 'Place was successfully updated.' }
        #format.json { head :no_content }
      else
        format.html { render action: "edit" }
        #format.json { render json: @place.errors, status: :unprocessable_entity }
      end
    end
  end



end
