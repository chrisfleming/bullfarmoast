class AttractionsController < ApplicationController
  #before_filter :find_Attraction, :only => [:show, :edit, :update, :destroy]

  # GET /Attractions
  # GET /Attractions.xml
  def index
    @attractions = Attraction.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @attractions }
    end
  end

  # GET /Attractions/1
  # GET /Attractions/1.xml
  def show
    @attraction = Attraction.find(params[:id])
    
    respond_to do |wants|
      wants.html # show.html.erb
      wants.xml  { render :xml => @Attraction }
    end
  end

  # GET /Attractions/new
  # GET /Attractions/new.xml
  def new
    @Attraction = Attraction.new

    respond_to do |wants|
      wants.html # new.html.erb
      wants.xml  { render :xml => @Attraction }
    end
  end

  # GET /Attractions/1/edit
  def edit
  end

  # POST /Attractions
  # POST /Attractions.xml
  def create
    @Attraction = Attraction.new(params[:Attraction])

    respond_to do |wants|
      if @Attraction.save
        flash[:notice] = 'Attraction was successfully created.'
        wants.html { redirect_to(@Attraction) }
        wants.xml  { render :xml => @Attraction, :status => :created, :location => @Attraction }
      else
        wants.html { render :action => "new" }
        wants.xml  { render :xml => @Attraction.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /Attractions/1
  # PUT /Attractions/1.xml
  def update
    respond_to do |wants|
      if @Attraction.update_attributes(params[:Attraction])
        flash[:notice] = 'Attraction was successfully updated.'
        wants.html { redirect_to(@Attraction) }
        wants.xml  { head :ok }
      else
        wants.html { render :action => "edit" }
        wants.xml  { render :xml => @Attraction.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /Attractions/1
  # DELETE /Attractions/1.xml
  def destroy
    @Attraction.destroy

    respond_to do |wants|
      wants.html { redirect_to(Attractions_url) }
      wants.xml  { head :ok }
    end
  end

  private
    def find_Attraction
      @Attraction = Attraction.find(params[:id])
    end

end
