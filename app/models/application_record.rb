# frozen_string_literal: true

# Предок всех моделей
class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  has_paper_trail
end
