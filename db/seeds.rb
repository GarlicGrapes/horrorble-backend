puts "Deleting Movie data..."
Movie.destroy_all
Monster.destroy_all
Director.destroy_all



puts "🎬 Creating Directors..."
twisty = Director.create(name: "M. Night Shyamalan")
peele = Director.create(name: "Jordan Peele")
king = Director.create(name: "Steven King")
kubrick = Director.create(name: "Stanley Kubrick")

puts "🎥 Creating Movies..."

get_out = Movie.create(title: "Get Out", release_year: 2017, director: peele, watched: true, poster_url: "https://m.media-amazon.com/images/M/MV5BMjUxMDQwNjcyNl5BMl5BanBnXkFtZTgwNzcwMzc0MTI@._V1_.jpg")
us = Movie.create(title: "Us", release_year: 2019, director: peele, watched: true, poster_url: "https://m.media-amazon.com/images/M/MV5BZTliNWJhM2YtNDc1MC00YTk1LWE2MGYtZmE4M2Y5ODdlNzQzXkEyXkFqcGdeQXVyMzY0MTE3NzU@._V1_.jpg")
hungry_clown_movie = Movie.create(title: "It", release_year: 1986, director: king, watched: false, poster_url: "https://movieposters2.com/images/704489-b.jpg")
shutin_movie = Movie.create(title: "The Shining", release_year: 1980, director: kubrick, watched: true, poster_url: "https://cdn.shopify.com/s/files/1/0057/3728/3618/products/shining2_480x.progressive.jpg?v=1632312188")
not_your_graveyard_movie = Movie.create(title: "Pet Sematary", release_year: 2019, director: king, watched: false, poster_url: "https://m.media-amazon.com/images/M/MV5BZTgxMGQwM2UtZTAxNi00M2JhLTk4ZTgtZmFlODI0NmI3ZDViXkEyXkFqcGdeQXVyMTkxNjUyNQ@@._V1_.jpg")
it_takes_a = Movie.create(title: "The Village", release_year: 2004, director: twisty, watched: true, poster_url: "https://cdn.shopify.com/s/files/1/0057/3728/3618/products/c40e9ec2d9a35ffddf79aa256e4a6189_759f4705-5575-43a3-8159-321218da8ffa_480x.progressive.jpg?v=1573613769")
sad_plants = Movie.create(title: "The Happening", release_year: 2008, director: twisty, watched: true, poster_url: "https://cdn.shopify.com/s/files/1/0057/3728/3618/products/cb57b0b660b8723e21c5f2e52b5ed112_20de79a1-a756-4129-9432-59a6a69e251a_480x.progressive.jpg?v=1573584383")

puts "👹 Creating Monsters..."

pig_man = Monster.create(name: "Pig Man", movie: it_takes_a)
scary_clown = Monster.create(name: "Pennywise", movie: hungry_clown_movie)
white_people = Monster.create(name: "White People", movie: get_out)
literally_plants = Monster.create(name: "Plants", movie: sad_plants)
scary_you = Monster.create(name: "Upside-down you", movie: us)
little_zambie = Monster.create( name: "Little boy", movie: not_your_graveyard_movie)
lonely_man = Monster.create(name: "Johnny", movie: shutin_movie )


puts "✅ Done seeding!"
