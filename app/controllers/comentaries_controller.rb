class ComentariesController < ApplicationController
  before_action :set_comentary, only: [:show, :edit, :update, :destroy]

  # GET /comentaries
  # GET /comentaries.json
  def index
    @comentaries = Comentary.all
  end

  # GET /comentaries/1
  # GET /comentaries/1.json
  def show
  end

  # GET /comentaries/new
  def new
    @comentary = Comentary.new
  end

  # GET /comentaries/1/edit
  def edit
  end

  # POST /comentaries
  # POST /comentaries.json
  #def create
  #  @comentary = Comentary.new(comentary_params)

    #espond_to do |format|
     # if @comentary.save
      #  format.html { redirect_to @comentary, notice: 'Comentary was successfully created.' }
       # format.json { render :show, status: :created, location: @comentary }
      #else
      #  format.html { render :new }
      #  format.json { render json: @comentary.errors, status: :unprocessable_entity }
      #end
    #end

  def create
    respond_to do |format|
      @comentary = Comentary.new(comentary_params)
      @comentary.save
      format.html { redirect_to request.referer, notice: 'Comentário cadastrado com sucesso.' }
    end
  end

  # PATCH/PUT /comentaries/1
  # PATCH/PUT /comentaries/1.json
  def update
    respond_to do |format|
      if @comentary.update(comentary_params)
        format.html { redirect_to @comentary, notice: 'Comentary was successfully updated.' }
        format.json { render :show, status: :ok, location: @comentary }
      else
        format.html { render :edit }
        format.json { render json: @comentary.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comentaries/1
  # DELETE /comentaries/1.json
  def destroy
    @comentary.destroy
    respond_to do |format|
      format.html { redirect_to comentaries_url, notice: 'Comentary was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comentary
      @comentary = Comentary.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comentary_params
      params.require(:comentary).permit(:date, :content, :publication_id)
    end
end
