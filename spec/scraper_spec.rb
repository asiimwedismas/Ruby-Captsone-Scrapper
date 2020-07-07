require './lib/scraper'
require './lib/movie'

describe Movie do
  describe '#initialize' do
    it 'correctly sets attributes' do
      movie = Movie.new('The boss', '2020', '5/10', 'www.xyz.com')
      expect(movie).to have_attributes(title: 'The boss',
                                       year: '2020',
                                       rating: '5/10',
                                       link: 'www.xyz.com')
    end
  end
end

describe Scraper do
  describe '#initialize' do
    it 'returns data from given url' do
      url_link = 'https://yts.mx/browse-movies/0/all/animation/0/rating/0/en'
      scraper = Scraper.new(url_link)
      raise if scraper.data.nil?
    end
  end
end
