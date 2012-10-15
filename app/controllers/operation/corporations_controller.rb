class Operation::CorporationsController < ApplicationController
  # GET /corporations
  # GET /corporations.json
  def index
    @corporations = Corporation.newer.all

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
