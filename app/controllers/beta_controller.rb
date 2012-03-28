class BetaController < ApplicationController
  respond_to :html, :xml, :json

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

    if @betum.save
      respond_with( @betum, :status => :created) do |format|
        format.html do
          if request.xhr? then render partial: "beta/success" else render action: :show end
        end
      end
    else
      respond_with( @betum.errors, :status => :unprocessable_entity ) do |format|
        format.html do
          if request.xhr? then render partial: "layouts/error", locals: {object: @betum} else render action: :new end
        end
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
