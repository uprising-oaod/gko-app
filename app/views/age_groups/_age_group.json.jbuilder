# frozen_string_literal: true

json.extract! age_group, :id, :age, :gender, :code, :name, :title, :created_at, :updated_at
json.url age_group_url(age_group, format: :json)
