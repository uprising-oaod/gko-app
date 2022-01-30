class MedalsController < ApplicationController
  before_action :set_medal, only: %i[ show edit update destroy ]

  # GET /medals or /medals.json
  def index
    @medals = Medal.all
  end

  # GET /medals/1 or /medals/1.json
  def show
  end

  # GET /medals/new
  def new
    @medal = Medal.new
  end

  # GET /medals/1/edit
  def edit
  end

  # POST /medals or /medals.json
  def create
    @medal = Medal.new(medal_params)

    respond_to do |format|
      if @medal.save
        format.html { redirect_to medal_url(@medal), notice: "Medal was successfully created." }
        format.json { render :show, status: :created, location: @medal }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @medal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /medals/1 or /medals/1.json
  def update
    respond_to do |format|
      if @medal.update(medal_params)
        format.html { redirect_to medal_url(@medal), notice: "Medal was successfully updated." }
        format.json { render :show, status: :ok, location: @medal }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @medal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /medals/1 or /medals/1.json
  def destroy
    @medal.destroy

    respond_to do |format|
      format.html { redirect_to medals_url, notice: "Medal was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_medal
      @medal = Medal.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def medal_params
      params.require(:medal).permit(:code, :name, :title, :weight)
    end
end
