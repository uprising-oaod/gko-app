# frozen_string_literal: true

json.extract! indicator, :id, :code, :name, :title, :unit, :created_at, :updated_at
json.url indicator_url(indicator, format: :json)
