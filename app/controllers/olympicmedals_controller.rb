class OlympicmedalsController < ApplicationController
  before_action :set_olympicmedal, only: [:show, :edit, :update, :destroy]

  # GET /olympicmedals
  # GET /olympicmedals.json
  def index
    @olympicmedals = Olympicmedal.all
  end

  # GET /olympicmedals/1
  # GET /olympicmedals/1.json
  def show
  end

  # GET /olympicmedals/new
  def new
    @olympicmedal = Olympicmedal.new
  end

  # GET /olympicmedals/1/edit
  def edit
  end

  # POST /olympicmedals
  # POST /olympicmedals.json
  def create
    @olympicmedal = Olympicmedal.new(olympicmedal_params)

    respond_to do |format|
      if @olympicmedal.save
        format.html { redirect_to @olympicmedal, notice: 'Olympicmedal was successfully created.' }
        format.json { render :show, status: :created, location: @olympicmedal }
      else
        format.html { render :new }
        format.json { render json: @olympicmedal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /olympicmedals/1
  # PATCH/PUT /olympicmedals/1.json
  def update
    respond_to do |format|
      if @olympicmedal.update(olympicmedal_params)
        format.html { redirect_to @olympicmedal, notice: 'Olympicmedal was successfully updated.' }
        format.json { render :show, status: :ok, location: @olympicmedal }
      else
        format.html { render :edit }
        format.json { render json: @olympicmedal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /olympicmedals/1
  # DELETE /olympicmedals/1.json
  def destroy
    @olympicmedal.destroy
    respond_to do |format|
      format.html { redirect_to olympicmedals_url, notice: 'Olympicmedal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_olympicmedal
      @olympicmedal = Olympicmedal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def olympicmedal_params
      params.require(:olympicmedal).permit(:athlete_name, :event, :country, :medal_type, :eventdate)
    end
end

