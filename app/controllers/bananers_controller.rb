class BananersController < ApplicationController
  # GET /bananers
  # GET /bananers.json
  def index
    @bananers = Bananer.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @bananers }
    end
  end

  # GET /bananers/1
  # GET /bananers/1.json
  def show
    @bananer = Bananer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @bananer }
    end
  end

  # GET /bananers/new
  # GET /bananers/new.json
  def new
    @bananer = Bananer.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @bananer }
    end
  end

  # GET /bananers/1/edit
  def edit
    @bananer = Bananer.find(params[:id])
  end

  # POST /bananers
  # POST /bananers.json
  def create
    @bananer = Bananer.new(params[:bananer])

    respond_to do |format|
      if @bananer.save
        format.html { redirect_to @bananer, notice: 'Bananer was successfully created.' }
        format.json { render json: @bananer, status: :created, location: @bananer }
      else
        format.html { render action: "new" }
        format.json { render json: @bananer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /bananers/1
  # PUT /bananers/1.json
  def update
    @bananer = Bananer.find(params[:id])

    respond_to do |format|
      if @bananer.update_attributes(params[:bananer])
        format.html { redirect_to @bananer, notice: 'Bananer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @bananer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bananers/1
  # DELETE /bananers/1.json
  def destroy
    @bananer = Bananer.find(params[:id])
    @bananer.destroy

    respond_to do |format|
      format.html { redirect_to bananers_url }
      format.json { head :no_content }
    end
  end
end
