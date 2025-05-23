# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Seed the RottenPotatoes DB with some movies.
more_movies = [
  { title: 'My Neighbor Totoro', rating: 'G',
    release_date: '16-Apr-1988' },
  { title: 'Green Book', rating: 'PG-13',
    release_date: '16-Nov-2018' },
  { title: 'Parasite', rating: 'R',
    release_date: '30-May-2019' },
  { title: 'Nomadland', rating: 'R',
    release_date: '19-Feb-2021' },
  { title: 'CODA', rating: 'PG-13',
    release_date: '13-Aug-2021' },
  { title: 'GBC', rating: 'PG-13',
    release_date: '13-Aug-2024' },
  { title: 'MYGO!!!!!', rating: 'PG-13',
    release_date: '13-Apr-2023' },
  { title: 'Bocchi', rating: 'PG-13',
    release_date: '13-Jun-2022' }
]

more_movies.each do |movie|
    Movie.find_or_create_by!(title: movie[:title]) do |m|
        # since find_or_create_by checks for one specfic field
        # we need set the rest feilds
        m.rating = movie[:rating]
        m.release_date = movie[:release_date]
    end
end
