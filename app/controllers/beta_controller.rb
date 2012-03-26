class BetaController < ApplicationController
  # GET /beta
  # GET /beta.json
  def index
    @beta = Betum.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @beta }
    end
  end

  # GET /beta/1
  # GET /beta/1.json
  def show
    @betum = Betum.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @betum }
    end
  end

  # GET /beta/new
  # GET /beta/new.json
  def new
    @betum = Betum.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @betum }
      format.js
    end
  end

  # GET /beta/1/edit
  def edit
    @betum = Betum.find(params[:id])
  end

  # POST /beta
  # POST /beta.json
  def create
    @betum = Betum.new(params[:betum])

    respond_to do |format|
      if @betum.save
        format.html { redirect_to @betum, notice: 'Betum was successfully created.' }
        format.json { render json: @betum, status: :created, location: @betum }
      else
        format.html { render action: "new" }
        format.json { render json: @betum.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  # PUT /beta/1
  # PUT /beta/1.json
  def update
    @betum = Betum.find(params[:id])

    respond_to do |format|
      if @betum.update_attributes(params[:betum])
        format.html { redirect_to @betum, notice: 'Betum was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @betum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /beta/1
  # DELETE /beta/1.json
  def destroy
    @betum = Betum.find(params[:id])
    @betum.destroy

    respond_to do |format|
      format.html { redirect_to beta_url }
      format.json { head :no_content }
    end
  end
end
