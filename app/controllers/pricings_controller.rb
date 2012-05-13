class PricingsController < ApplicationController
  # GET /pricings
  # GET /pricings.json
  def index
    @pricings = Pricing.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pricings }
    end
  end

  # GET /pricings/1
  # GET /pricings/1.json
  def show
    @pricing = Pricing.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @pricing }
    end
  end

  # GET /pricings/new
  # GET /pricings/new.json
  def new
    @pricing = Pricing.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @pricing }
    end
  end

  # GET /pricings/1/edit
  def edit
    @pricing = Pricing.find(params[:id])
  end

  # POST /pricings
  # POST /pricings.json
  def create
    @pricing = Pricing.new(params[:pricing])

    respond_to do |format|
      if @pricing.save
        format.html { redirect_to @pricing, notice: 'Pricing was successfully created.' }
        format.json { render json: @pricing, status: :created, location: @pricing }
      else
        format.html { render action: "new" }
        format.json { render json: @pricing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /pricings/1
  # PUT /pricings/1.json
  def update
    @pricing = Pricing.find(params[:id])

    respond_to do |format|
      if @pricing.update_attributes(params[:pricing])
        format.html { redirect_to @pricing, notice: 'Pricing was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @pricing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pricings/1
  # DELETE /pricings/1.json
  def destroy
    @pricing = Pricing.find(params[:id])
    @pricing.destroy

    respond_to do |format|
      format.html { redirect_to pricings_url }
      format.json { head :ok }
    end
  end
end
