# frozen_string_literal: true

class IndicatorMedal < ApplicationRecord
  belongs_to :age_group, inverse_of: :indicator_medals
  belongs_to :indicator, inverse_of: :indicator_medals
  belongs_to :medal, inverse_of: :indicator_medals

  attr_accessor :min_value_bronze, :max_value_bronze, :min_value_silver, :max_value_silver, :min_value_gold, :max_value_gold
end
