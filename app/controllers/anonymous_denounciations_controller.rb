class AnonymousDenounciationsController < ApplicationController
  before_action :set_anonymous_denounciation, only: [:show, :edit, :update, :destroy]

  # GET /anonymous_denounciations
  # GET /anonymous_denounciations.json
  def index
    @anonymous_denounciations = AnonymousDenounciation.all
  end

  # GET /anonymous_denounciations/1
  # GET /anonymous_denounciations/1.json
  def show
  end

  # GET /anonymous_denounciations/new
  def new
    @anonymous_denounciation = AnonymousDenounciation.new
  end

  # GET /anonymous_denounciations/1/edit
  def edit
  end

  # POST /anonymous_denounciations
  # POST /anonymous_denounciations.json
  def create
    @anonymous_denounciation = AnonymousDenounciation.new(anonymous_denounciation_params)

    respond_to do |format|
      if @anonymous_denounciation.save
        format.html { redirect_to @anonymous_denounciation, notice: 'Anonymous denounciation was successfully created.' }
        format.json { render :show, status: :created, location: @anonymous_denounciation }
      else
        format.html { render :new }
        format.json { render json: @anonymous_denounciation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /anonymous_denounciations/1
  # PATCH/PUT /anonymous_denounciations/1.json
  def update
    respond_to do |format|
      if @anonymous_denounciation.update(anonymous_denounciation_params)
        format.html { redirect_to @anonymous_denounciation, notice: 'Anonymous denounciation was successfully updated.' }
        format.json { render :show, status: :ok, location: @anonymous_denounciation }
      else
        format.html { render :edit }
        format.json { render json: @anonymous_denounciation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /anonymous_denounciations/1
  # DELETE /anonymous_denounciations/1.json
  def destroy
    @anonymous_denounciation.destroy
    respond_to do |format|
      format.html { redirect_to anonymous_denounciations_url, notice: 'Anonymous denounciation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_anonymous_denounciation
      @anonymous_denounciation = AnonymousDenounciation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def anonymous_denounciation_params
      params.require(:anonymous_denounciation).permit(:occurrence_date, :uncertain_date, :location_type, :report, :address_id)
    end
end
