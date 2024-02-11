# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Movie.destroy_all

require 'open-uri'
require 'json'

# Define a method to fetch movie data from the proxy API
def fetch_movies_from_proxy
  url = "http://tmdb.lewagon.com/movie/top_rated"
  response = URI.open(url).read
  JSON.parse(response)['results']
end

# Seed real movies from the proxy API
Movie.transaction do
  movies_data = fetch_movies_from_proxy

  movies_data.first(10).each do |movie_data|
    Movie.create!(
      title: movie_data['title'],
      overview: movie_data['overview'],
      poster_url: "http://image.tmdb.org/t/p/w500#{movie_data['poster_path']}",
      rating: movie_data['vote_average'].to_f
    )
  end
end
