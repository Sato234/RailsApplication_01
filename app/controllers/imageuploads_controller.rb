class ImageuploadsController < ApplicationController
  # GET /imageuploads
  # GET /imageuploads.json
  def index
    #@imageuploads = Imageupload.all

    @imageuploads = Imageupload.paginate(:page => params[:page], :order => 'created_at desc', :per_page => 10)
   
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @imageuploads }
    end
  end

  # GET /imageuploads/1
  # GET /imageuploads/1.json
  def show
    @imageupload = Imageupload.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @imageupload }
    end
  end

  # GET /imageuploads/new
  # GET /imageuploads/new.json
  def new
    @imageupload = Imageupload.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @imageupload }
    end
  end

  # GET /imageuploads/1/edit
  def edit
    @imageupload = Imageupload.find(params[:id])
  end

  # POST /imageuploads
  # POST /imageuploads.json
  def create
    @imageupload = Imageupload.new(params[:imageupload])
    
#    logger.error @imageupload.image_file_name
#    logger.error @imageupload.image_content_type
#    logger.error @imageupload.image_file_size
#    logger.error @imageupload.image_updated_at

    respond_to do |format|
      if @imageupload.save
        format.html { redirect_to @imageupload, notice: 'Imageupload was successfully created.' }
        format.json { render json: @imageupload, status: :created, location: @imageupload }
      else
        format.html { render action: "new" }
        format.json { render json: @imageupload.errors, status: :unprocessable_entity }
      end
    end
    
  end

  # PUT /imageuploads/1
  # PUT /imageuploads/1.json
  def update
    @imageupload = Imageupload.find(params[:id])

    respond_to do |format|
      if @imageupload.update_attributes(params[:imageupload])
        format.html { redirect_to @imageupload, notice: 'Imageupload was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @imageupload.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /imageuploads/1
  # DELETE /imageuploads/1.json
  def destroy
    @imageupload = Imageupload.find(params[:id])
    @imageupload.destroy

    respond_to do |format|
      format.html { redirect_to imageuploads_url }
      format.json { head :no_content }
    end
  end
end
