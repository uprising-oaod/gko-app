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
    indicator_medal_bronze_params = indicator_medal_params.slice(:age_group_id, :indicator_id)
    indicator_medal_bronze_params[:medal_id] = Medal.find_by(code: :bronze).id
    indicator_medal_bronze_params[:min_value] = indicator_medal_params[:min_value_bronze]
    indicator_medal_bronze_params[:max_value] = indicator_medal_params[:max_value_bronze]
    indicator_medal_silver_params = indicator_medal_params.slice(:age_group_id, :indicator_id)
    indicator_medal_silver_params[:medal_id] = Medal.find_by(code: :silver).id
    indicator_medal_silver_params[:min_value] = indicator_medal_params[:min_value_silver]
    indicator_medal_silver_params[:max_value] = indicator_medal_params[:max_value_silver]
    indicator_medal_gold_params = indicator_medal_params.slice(:age_group_id, :indicator_id)
    indicator_medal_gold_params[:medal_id] = Medal.find_by(code: :gold).id
    indicator_medal_gold_params[:min_value] = indicator_medal_params[:min_value_gold]
    indicator_medal_gold_params[:max_value] = indicator_medal_params[:max_value_gold]

    @indicator_medal_bronze = IndicatorMedal.new(indicator_medal_bronze_params)
    @indicator_medal_silver = IndicatorMedal.new(indicator_medal_silver_params)
    @indicator_medal_gold = IndicatorMedal.new(indicator_medal_gold_params)

    respond_to do |format|
      if @indicator_medal_bronze.save && @indicator_medal_silver.save && @indicator_medal_gold.save
        format.html do
          @age_group = AgeGroup.find(indicator_medal_params[:age_group_id])
          redirect_to age_group_url(@age_group), notice: 'Indicator medal was successfully created.'
        end
        format.json { render :show, status: :created, location: @age_group }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @age_group.errors, status: :unprocessable_entity }
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
    params.require(:indicator_medal).permit(:age_group_id, :indicator_id, :min_value_bronze, :max_value_bronze, :min_value_silver, :max_value_silver, :min_value_gold, :max_value_gold)
  end
end
