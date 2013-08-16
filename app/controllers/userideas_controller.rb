class UserideasController < ApplicationController
  # GET /Userideass
  # GET /Userideass.json
  def index
    @Userideas = Userideas.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @Userideas }
    end
  end

  # GET /Userideass/1
  # GET /Userideass/1.json
  def show
    @Userideas = Userideas.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @Userideas }
    end
  end

  # GET /Userideass/new
  # GET /Userideass/new.json
  def new
    @Userideas = Userideas.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @Userideas }
    end
  end

  # GET /Userideass/1/edit
  def edit
    @Userideas = Userideas.find(params[:id])
  end

  # POST /Userideass
  # POST /Userideass.json
  def create
    @Userideas = Userideas.new(params[:Userideas])

    respond_to do |format|
      if @Userideas.save
        format.html { redirect_to @Userideas, notice: 'Userideas was successfully created.' }
        format.json { render json: @Userideas, status: :created, location: @Userideas }
      else
        format.html { render action: "new" }
        format.json { render json: @Userideas.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /Userideass/1
  # PUT /Userideass/1.json
  def update
    @Userideas = Userideas.find(params[:id])

    respond_to do |format|
      if @Userideas.update_attributes(params[:Userideas])
        format.html { redirect_to @Userideas, notice: 'Userideas was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @Userideas.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /Userideass/1
  # DELETE /Userideass/1.json
  def destroy
    @Userideas = Userideas.find(params[:id])
    @Userideas.destroy

    respond_to do |format|
      format.html { redirect_to Userideass_url }
      format.json { head :no_content }
    end
  end
end
