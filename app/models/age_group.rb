# frozen_string_literal: true

class AgeGroup < ApplicationRecord
  enum gender: { male: 'm', female: 'f' }

  has_many :indicator_medals, dependent: :destroy, inverse_of: :age_group
  has_many :medals, through: :indicator_medals
  has_many :indicators, through: :indicator_medals
end
