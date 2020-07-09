require_relative '../lib/scraper'
require_relative '../lib/movie'

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
  let(:scraper) { Scraper.new('https://yts.mx/browse-movies/0/all/animation/0/rating/0/en') }

  it 'Data attribute should contain a value after a successful object creation' do
    raise if scraper.data.nil?
  end
end
