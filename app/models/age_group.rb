# frozen_string_literal: true

class AgeGroup < ApplicationRecord
  enum gender: { male: 'm', female: 'f' }
end
