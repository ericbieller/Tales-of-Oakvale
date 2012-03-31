class BetaController < ApplicationController
  respond_to :html, :xml, :json
  http_basic_authenticate_with name: 'us', :password => "taffyninja", only: [:show, :index]

  make_resourceful do
    actions :index, :show, :new, :destroy
  end

  def create
    @betum = Betum.new(params[:betum])
    if @betum.save
      respond_to do |format|
        format.html { render action: :new, notice: 'Thanks for signing up!' }
        format.json {render json: {beta: @betum, created: true, html: render_to_string(partial: '/beta/success',
                                                                         layout: false, locals: {beta: @betum})}}
      end
    else
      respond_to do |format|
        format.html {render action: :new}
        format.json {render json: {beta: @betum, created: false, html: render_to_string(partial: "beta/beta_error",
                                                                          layout: false, locals: {beta: @betum})}}
      end
    end
  end
end
