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

get_out = Movie.create(title: "Get Out", release_year: 2017, director: peele)
us = Movie.create(title: "Us", release_year: 2019, director: peele)
hungry_clown_movie = Movie.create(title: "It", release_year: 1986, director: king)
shutin_movie = Movie.create(title: "The Shining", release_year: 1980, director: kubrick)
not_your_graveyard_movie = Movie.create(title: "Pet Sematary", release_year: 2019, director: king)
it_takes_a = Movie.create(title: "The Village", release_year: 2004, director: twisty)
sad_plants = Movie.create(title: "The Happening", release_year: 2008, director: twisty)

puts "👹 Creating Monsters..."

pig_man = Monster.create(name: "Pig Man", movie: it_takes_a)
scary_clown = Monster.create(name: "Pennywise", movie: hungry_clown_movie)
white_people = Monster.create(name: "White People", movie: get_out)
literally_plants = Monster.create(name: "Plants", movie: sad_plants)
scary_you = Monster.create(name: "Upside-down you", movie: us)
little_zambie = Monster.create( name: "Little boy", movie: not_your_graveyard_movie)
lonely_man = Monster.create(name: "Johnny", movie: shutin_movie )


puts "✅ Done seeding!"
