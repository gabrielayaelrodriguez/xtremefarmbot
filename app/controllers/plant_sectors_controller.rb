class PlantSectorsController < ApplicationController
  before_action :set_plant_sector, only: [:show, :edit, :update, :destroy]
  before_action :set_parent

  # GET /plant_sectors
  # GET /plant_sectors.json
  def index
    @plant_sectors = PlantSector.all
  end

  # GET /plant_sectors/1
  # GET /plant_sectors/1.json


  # GET /plant_sectors/new
  def new
    @plant_sector = PlantSector.new
  end

  # GET /plant_sectors/1/edit
  def edit
  end

  # POST /plant_sectors
  # POST /plant_sectors.json
  def create
    @plant_sector = PlantSector.new(plant_sector_params)
    @plant_sector.greenhouse_id = @greenhouse.id

    respond_to do |format|
      if @plant_sector.save
        format.html { redirect_to root_path, notice: 'Plant sector was successfully created.' }
        format.json { render :show, status: :created, location: root_path }
      else
        format.html { render :new }
        format.json { render json: @plant_sector.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /plant_sectors/1
  # PATCH/PUT /plant_sectors/1.json
  def update
    respond_to do |format|
      if @plant_sector.update(plant_sector_params)
        format.html { redirect_to root_path, notice: 'Plant sector was successfully updated.' }
        format.json { render :show, status: :ok, location: root_path }
      else
        format.html { render :edit }
        format.json { render json: @plant_sector.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /plant_sectors/1
  # DELETE /plant_sectors/1.json
  def destroy
    @plant_sector.destroy
    respond_to do |format|
      format.html { redirect_to root_path, notice: 'Plant sector was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_plant_sector
      @plant_sector = PlantSector.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def plant_sector_params
      params.require(:plant_sector).permit(:plant_id)
    end

    def set_parent
      @greenhouse=Greenhouse.first
    end
end
