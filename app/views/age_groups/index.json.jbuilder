# frozen_string_literal: true

json.array! @age_groups, partial: 'age_groups/age_group', as: :age_group
