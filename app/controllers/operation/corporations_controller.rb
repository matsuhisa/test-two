# encoding: utf-8
class Operation::CorporationsController < OperationController
  # GET /corporations
  # GET /corporations.json
  def index
    @corporation_search = Corporation_search.new params[:corporation_search]

    @corporations = Corporation.newer.scoped
	  @corporations = @corporations.like_name(@corporation_search.name).search_admin_type(@corporation_search.admin_type).search_pref_id(@corporation_search.pref_id)
    
    #@corporations = Corporation.newer.all
    #@corporations = Corporation.newer.where(:admin_type=>params[:admin_type]).where(:pref_id=>params[:pref_id])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @corporations }
    end
  end

  # GET /corporations/1
  # GET /corporations/1.json
  def show
    @corporation = Corporation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @corporation }
    end
  end

  # GET /corporations/1/edit
  def edit
    @corporation = Corporation.find(params[:id])
  end

  # PUT /corporations/1
  # PUT /corporations/1.json
  def update
    @corporation = Corporation.find(params[:id])

    respond_to do |format|
      if @corporation.update_attributes(params[:corporation])
        format.html { redirect_to @corporation, notice: 'Corporation was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @corporation.errors, status: :unprocessable_entity }
      end
    end
  end

end
