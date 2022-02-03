# frozen_string_literal: true

json.extract! indicator_medal, :id, :age_group_id, :indicator_id, :min_value, :max_value, :medal_id, :created_at,
              :updated_at
json.url indicator_medal_url(indicator_medal, format: :json)
