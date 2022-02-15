# frozen_string_literal: true

class IndicatorMedalsController < ApplicationController
  before_action :set_indicator_medal, only: %i[show edit update destroy]

  # GET /indicator_medals or /indicator_medals.json
  def index
    @indicator_medals = IndicatorMedal.all
  end

  # GET /indicator_medals/1 or /indicator_medals/1.json
  def show; end

  # GET /indicator_medals/new
  def new
    @indicator_medal = IndicatorMedal.new(age_group_id: indicator_medal_params[:age_group_id])
  end

  # GET /indicator_medals/1/edit
  def edit; end

  # POST /indicator_medals or /indicator_medals.json
  def create
    @indicator_medal = IndicatorMedal.new(indicator_medal_params)

    respond_to do |format|
      if @indicator_medal.save
        format.html do
          redirect_to indicator_medal_url(@indicator_medal), notice: 'Indicator medal was successfully created.'
        end
        format.json { render :show, status: :created, location: @indicator_medal }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @indicator_medal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /indicator_medals/1 or /indicator_medals/1.json
  def update
    respond_to do |format|
      if @indicator_medal.update(indicator_medal_params)
        format.html do
          redirect_to indicator_medal_url(@indicator_medal), notice: 'Indicator medal was successfully updated.'
        end
        format.json { render :show, status: :ok, location: @indicator_medal }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @indicator_medal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /indicator_medals/1 or /indicator_medals/1.json
  def destroy
    @indicator_medal.destroy

    respond_to do |format|
      format.html { redirect_to indicator_medals_url, notice: 'Indicator medal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_indicator_medal
    @indicator_medal = IndicatorMedal.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def indicator_medal_params
    params.require(:indicator_medal).permit(:age_group_id, :indicator_id, :min_value, :max_value, :medal_id)
  end
end
