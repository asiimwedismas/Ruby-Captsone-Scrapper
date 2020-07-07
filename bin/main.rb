require './lib/scrapper'
require './lib/movie'

# You can refine your search by tweaking the variables below using the adjecent commented arrays as guideline
# happy pirating

search_term = '0' # [enter search term or 0 to leave blank]
quailty = 'all' # [720p, 1080p, 1080p, 2160p, 3D, all for all qualities]
genre = 'animation' # [action, adventure, animation, comedy, drama, horror, all for all genres]
rating = '0' # [1,2,3,4,5,6,7,8,9, 0 for all ratings]
order = 'rating' # [latest, oldest,featured, seeds, peers, year, rating, likes, alphabetical, downloads]
year = '0' # [enter year or 0 for any year]
lang = 'en' # [en -> english, all -> all, fr -> french]

url_link = "https://yts.mx/browse-movies/#{search_term}/#{quailty}/#{genre}/#{rating}/#{order}/#{year}/#{lang}"

scraper = Scrapper.new(url_link)

puts("Dislpaying #{scraper.movies.size}   Movies")
puts

scraper.movies.each do |entry|
  puts("Title:  #{entry.title}")
  puts("Rating: #{entry.rating}")
  puts("Year:   #{entry.year}")
  puts("Link:   #{entry.link}")
  puts
end
