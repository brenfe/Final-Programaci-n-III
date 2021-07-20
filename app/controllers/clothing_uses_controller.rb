class ClothingUsesController < ApplicationController
  before_action :set_clothing_use, only: %i[ show edit update destroy ]
  before_action :authenticate_user!
  # GET /clothing_uses or /clothing_uses.json
  def index
    @clothing_uses = ClothingUse.all
  end

  # GET /clothing_uses/1 or /clothing_uses/1.json
  def show
  end

  # GET /clothing_uses/new
  def new
    @clothing_use = ClothingUse.new
  end

  # GET /clothing_uses/1/edit
  def edit
  end

  # POST /clothing_uses or /clothing_uses.json
  def create
    @clothing_use = ClothingUse.new(clothing_use_params)

    respond_to do |format|
      if @clothing_use.save
        format.html { redirect_to @clothing_use, notice: "Clothing use was successfully created." }
        format.json { render :show, status: :created, location: @clothing_use }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @clothing_use.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clothing_uses/1 or /clothing_uses/1.json
  def update
    respond_to do |format|
      if @clothing_use.update(clothing_use_params)
        format.html { redirect_to @clothing_use, notice: "Clothing use was successfully updated." }
        format.json { render :show, status: :ok, location: @clothing_use }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @clothing_use.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clothing_uses/1 or /clothing_uses/1.json
  def destroy
    @clothing_use.destroy
    respond_to do |format|
      format.html { redirect_to clothing_uses_url, notice: "Clothing use was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_clothing_use
      @clothing_use = ClothingUse.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def clothing_use_params
      params.require(:clothing_use).permit(:broadcast_id, :garment_id, :host_id)
    end
end
