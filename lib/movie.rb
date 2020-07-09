# class movies is a data model
class Movie
  attr_reader :title, :year, :rating, :link

  def initialize(title, year, rating, link)
    @title = title
    @year = year
    @rating = rating
    @link = link
  end
end
