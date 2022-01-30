# frozen_string_literal: true

# Контроллер для работы с возрастными групаами
class AgeGroupsController < ApplicationController
  before_action :set_age_group, only: %i[show edit update destroy]

  # GET /age_groups or /age_groups.json
  def index
    @age_groups = AgeGroup.all
  end

  # GET /age_groups/1 or /age_groups/1.json
  def show; end

  # GET /age_groups/new
  def new
    @age_group = AgeGroup.new
  end

  # GET /age_groups/1/edit
  def edit; end

  # POST /age_groups or /age_groups.json
  def create
    @age_group = AgeGroup.new(age_group_params)

    respond_to do |format|
      if @age_group.save
        format.html { redirect_to age_group_url(@age_group), notice: 'Age group was successfully created.' }
        format.json { render :show, status: :created, location: @age_group }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @age_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /age_groups/1 or /age_groups/1.json
  def update
    respond_to do |format|
      if @age_group.update(age_group_params)
        format.html { redirect_to age_group_url(@age_group), notice: 'Age group was successfully updated.' }
        format.json { render :show, status: :ok, location: @age_group }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @age_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /age_groups/1 or /age_groups/1.json
  def destroy
    @age_group.destroy

    respond_to do |format|
      format.html { redirect_to age_groups_url, notice: 'Age group was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_age_group
    @age_group = AgeGroup.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def age_group_params
    params.require(:age_group).permit(:age, :gender, :code, :name, :title)
  end
end
