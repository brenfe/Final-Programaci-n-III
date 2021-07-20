class GarmentsController < ApplicationController
  before_action :set_garment, only: %i[ show edit update destroy ]
  before_action :authenticate_user!
  # GET /garments or /garments.json
  def index
    @garments = Garment.all
    @garments = @garments.page(params[:page] || 1)
    @garments = @garments.order((params[:by] || "brand_id") + " " + (params[:order] || "asc"))
    @garments = @garments.where(["description LIKE :filter", :filter => "%" + params[:filter] + "%"]) unless params[:filter].blank?
  end

  # GET /garments/1 or /garments/1.json
  def show
  end

  # GET /garments/new
  def new
    @garment = Garment.new
  end

  # GET /garments/1/edit
  def edit
  end

  # POST /garments or /garments.json
  def create
    @garment = Garment.new(garment_params)

    respond_to do |format|
      if @garment.save
        format.html { redirect_to @garment, notice: "Garment was successfully created." }
        format.json { render :show, status: :created, location: @garment }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @garment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /garments/1 or /garments/1.json
  def update
    respond_to do |format|
      if @garment.update(garment_params)
        format.html { redirect_to @garment, notice: "Garment was successfully updated." }
        format.json { render :show, status: :ok, location: @garment }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @garment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /garments/1 or /garments/1.json
  def destroy
    @garment.destroy
    respond_to do |format|
      format.html { redirect_to garments_url, notice: "Garment was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_garment
      @garment = Garment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def garment_params
      params.require(:garment).permit(:brand_id, :garment_type_id, :color, :description)
    end
end
