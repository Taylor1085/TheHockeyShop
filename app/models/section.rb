# frozen_string_literal: true

class Section < ApplicationRecord
  has_many :pages
end
