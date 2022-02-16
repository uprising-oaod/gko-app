# frozen_string_literal: true

class Indicator < ApplicationRecord
  has_many :indicator_medals, dependent: :destroy, inverse_of: :indicator
end
