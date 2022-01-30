# frozen_string_literal: true

json.array! @indicators, partial: 'indicators/indicator', as: :indicator
