# frozen_string_literal: true

# class movies is a data model
class Movie
  attr_reader :title, :genere, :year, :rating

  def initialize(title, genere, year, rating)
    @title = title
    @genere = genere
    @year = year
    @rating = rating
  end
end
