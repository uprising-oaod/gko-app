# frozen_string_literal: true

class Medal < ApplicationRecord
  has_many :indicator_medals, dependent: :destroy, inverse_of: :medal
end
