class OccurrenceBulletinsController < ApplicationController
  before_action :set_occurrence_bulletin, only: [:show, :edit, :update, :destroy]

  # GET /occurrence_bulletins
  # GET /occurrence_bulletins.json
  def index
    @occurrence_bulletins = OccurrenceBulletin.all
  end

  # GET /occurrence_bulletins/1
  # GET /occurrence_bulletins/1.json
  def show
  end

  # GET /occurrence_bulletins/new
  def new
    @occurrence_bulletin = OccurrenceBulletin.new
  end

  # GET /occurrence_bulletins/1/edit
  def edit
  end

  # POST /occurrence_bulletins
  # POST /occurrence_bulletins.json
  def create
    @occurrence_bulletin = OccurrenceBulletin.new(occurrence_bulletin_params)

    respond_to do |format|
      if @occurrence_bulletin.save
        format.html { redirect_to @occurrence_bulletin, notice: 'Occurrence bulletin was successfully created.' }
        format.json { render :show, status: :created, location: @occurrence_bulletin }
      else
        format.html { render :new }
        format.json { render json: @occurrence_bulletin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /occurrence_bulletins/1
  # PATCH/PUT /occurrence_bulletins/1.json
  def update
    respond_to do |format|
      if @occurrence_bulletin.update(occurrence_bulletin_params)
        format.html { redirect_to @occurrence_bulletin, notice: 'Occurrence bulletin was successfully updated.' }
        format.json { render :show, status: :ok, location: @occurrence_bulletin }
      else
        format.html { render :edit }
        format.json { render json: @occurrence_bulletin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /occurrence_bulletins/1
  # DELETE /occurrence_bulletins/1.json
  def destroy
    @occurrence_bulletin.destroy
    respond_to do |format|
      format.html { redirect_to occurrence_bulletins_url, notice: 'Occurrence bulletin was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_occurrence_bulletin
      @occurrence_bulletin = OccurrenceBulletin.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def occurrence_bulletin_params
      params.require(:occurrence_bulletin).permit(:occurrence_date, :uncertain_date, :location_type, :report, :person_id)
    end
end
