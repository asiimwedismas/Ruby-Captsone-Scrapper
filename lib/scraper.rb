require 'nokogiri'
require 'open-uri'
require_relative './movie'

class Scraper
  attr_reader :url_link, :movies, :data

  def initialize(url_link)
    @url_link = url_link
    @data = nil
    @movies = []

    scrape_movies
  end

  private

  def scrape_movies
    doc = Nokogiri::HTML(URI.open(@url_link))
    @data = doc.css('.browse-movie-wrap')
    extract_movies
  end

  def extract_movies
    @data.each do |entry|
      @movies << Movie.new(
        entry.css('.browse-movie-bottom').css('.browse-movie-title').text,
        entry.css('.browse-movie-bottom').css('.browse-movie-year').text,
        entry.css('.browse-movie-link').css('.rating').text,
        entry.css('a.browse-movie-link')[0]['href']
      )
    end
  end
end
