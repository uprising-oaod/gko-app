# frozen_string_literal: true

class IndicatorMedal < ApplicationRecord
  belongs_to :age_group
  belongs_to :indicator
  belongs_to :medal
end
