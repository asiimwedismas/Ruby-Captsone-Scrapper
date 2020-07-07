# frozen_string_literal: true

class Utilities
  def self.yearValid?(year)
    year >= 0 and year <= Date.today.year
  end

  def self.genereValid(genere)
    genere > 0 and genere < 10
  end
end
