class ImpdatesController < ApplicationController
  # GET /impdates
  # GET /impdates.json
  def index
    @impdates = Impdate.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @impdates }
    end
  end

  # GET /impdates/1
  # GET /impdates/1.json
  def show
    @impdate = Impdate.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @impdate }
    end
  end

  # GET /impdates/new
  # GET /impdates/new.json
  def new
    @impdate = Impdate.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @impdate }
    end
  end

  # GET /impdates/1/edit
  def edit
    @impdate = Impdate.find(params[:id])
  end

  # POST /impdates
  # POST /impdates.json
  def create
    @impdate = Impdate.new(params[:impdate])

    respond_to do |format|
      if @impdate.save
        format.html { redirect_to @impdate, notice: 'Impdate was successfully created.' }
        format.json { render json: @impdate, status: :created, location: @impdate }
      else
        format.html { render action: "new" }
        format.json { render json: @impdate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /impdates/1
  # PUT /impdates/1.json
  def update
    @impdate = Impdate.find(params[:id])

    respond_to do |format|
      if @impdate.update_attributes(params[:impdate])
        format.html { redirect_to @impdate, notice: 'Impdate was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @impdate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /impdates/1
  # DELETE /impdates/1.json
  def destroy
    @impdate = Impdate.find(params[:id])
    @impdate.destroy

    respond_to do |format|
      format.html { redirect_to impdates_url }
      format.json { head :no_content }
    end
  end
end
