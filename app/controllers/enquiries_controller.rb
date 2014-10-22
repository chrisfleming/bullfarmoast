class EnquiriesController < ApplicationController
  # GET /enquiries
  # GET /enquiries.json
  #def index
  #  @enquiries = Enquiry.all

  #  respond_to do |format|
  #    format.html # index.html.erb
  #    format.json { render json: @enquiries }
  #  end
  #end

  # GET /enquiries/1
  # GET /enquiries/1.json
  #def show
  #  @enquiry = Enquiry.find(params[:id])

  #  respond_to do |format|
  #    format.html # show.html.erb
  #    format.json { render json: @enquiry }
  #  end
  #end

  # GET /enquiries/new
  # GET /enquiries/new.json
  def new
    @enquiry = Enquiry.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @enquiry }
    end
  end

  # GET /enquiries/1/edit
  #def edit
  #  @enquiry = Enquiry.find(params[:id])
  #end

  # POST /enquiries
  # POST /enquiries.json
  def create
    @enquiry = Enquiry.new(params[:enquiry])
    
    logger.info "New enquiry: #{@enquiry.attributes.inspect}"


    respond_to do |format|
      if @enquiry.save 
        
        # Send request to Bull Farm Oast, but only if we return min of 5 links/
        # watch words
        if @enquiry.IsCommentSpam < 5
            AccomodationEnquiry.enquiry(@enquiry).deliver
        
            # Only send reply if we've not tagged this as spam at all
            unless @enquiry.IsCommentSpam 
              AccomodationEnquiry.acknowledge(@enquiry).deliver
            end
        else 
        	  logger.info "Ignoring Spam Score: #{@enquiry.IsCommentSpam}"
        end
        
        #redirect_to @enquiry, notice: 'Enquiry successfully submitted.', action: "success" 
        #format.json { render json: @enquiry, status: :created, location: @enquiry }
        format.html { render notice: 'Enquiry successfully submitted.', action: "success" }
        
      else
        render action: "new" 
        #format.json { render json: @enquiry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /enquiries/1
  # PUT /enquiries/1.json
  #def update
  #  @enquiry = Enquiry.find(params[:id])

  #  respond_to do |format|
  #    if @enquiry.update_attributes(params[:enquiry])
  #      format.html { redirect_to @enquiry, notice: 'Enquiry was successfully updated.' }
  #      format.json { head :ok }
  #    else
  #      format.html { render action: "edit" }
  #      format.json { render json: @enquiry.errors, status: :unprocessable_entity }
  #    end
  #  end
  #end

  # DELETE /enquiries/1
  # DELETE /enquiries/1.json
  #def destroy
  #  @enquiry = Enquiry.find(params[:id])
  #  @enquiry.destroy

  #  respond_to do |format|
  #    format.html { redirect_to enquiries_url }
  #    format.json { head :ok }
  #  end
  #end
end
