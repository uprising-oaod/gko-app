# frozen_string_literal: true

# Контроллер для служебного назначения
class HealthController < ApplicationController
  # Вывод логов
  # GET health/logs
  def logs
    @file_name = dashboard_params[:file_name] || Rails.env
    @file_body = Files::Show.new(@file_name).call
    respond_to do |format|
      format.html { render :logs, layout: 'application' }
    end
  end

  private

  # Разрешить передавать в запросе только перечисленный набор параметров
  def dashboard_params
    params.fetch(:dashboard, {}).permit(%w[file_name])
  end
end
