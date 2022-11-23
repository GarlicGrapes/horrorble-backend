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
scary_clown = Monster.create(name: "Pennywise", movie: hungry_clown_movie, img_url:"https://compote.slate.com/images/26572c3a-0e51-4a9f-9049-b64e730ca75d.jpg")
evil_gf = Monster.create(name: "Evil GF", movie: get_out, img_url:"https://media.gq-magazine.co.uk/photos/5d1398a77fcc8eb13b81fe97/3:4/w_960,h_1280,c_limit/Allison-Williams-GQ-10Apr17_rex_b.jpg")
evil_gf_dad_scary_doctor = Monster.create(name: "Evil Scary GF's Dad Doctor Man", movie: get_out, img_url:"https://www.google.com/imgres?imgurl=https%3A%2F%2Fcitizensclimatelobby.org%2Fwp-content%2Fuploads%2F2017%2F02%2FBradleyWhitfordPremiereVerticalEntertainmentM13bcfcD6J2l.jpg&imgrefurl=https%3A%2F%2Fcitizensclimatelobby.org%2Fabout-ccl%2Fadvisory-board%2Fbradley-whitford%2F&tbnid=m-t1-Sqri3lOwM&vet=12ahUKEwj3r_-Gv8T7AhUBZTUKHeY6BSkQMygHegUIARD2AQ..i&docid=HaA3DLKdjsoX-M&w=300&h=350&q=Bradley%20Whitford&ved=2ahUKEwj3r_-Gv8T7AhUBZTUKHeY6BSkQMygHegUIARD2AQ")
evil_gf_mom = Monster.create(name: "Hypnosis Lady", movie: get_out, img_url:"https://m.media-amazon.com/images/M/MV5BMjIwMzQ1Mzg1MF5BMl5BanBnXkFtZTcwNTE4MTU5MQ@@._V1_UX178_CR0,0,178,264_AL_.jpg")
evil_gf_grandpa_bodysnatcher = Monster.create(name: "Bodysnatcher", movie: get_out)
literally_plants = Monster.create(name: "Plants", movie: sad_plants, img_url: "https://cdn.shopify.com/s/files/1/0150/6262/products/the-sill_bird-of-paradise_large_upcycled_stonewash.jpg?v=1660319820&width=400")
scary_you = Monster.create(name: "Upside-down you", movie: us)
scary_me = Monster.create(name: "Upside-down me", movie: us)
little_zambie = Monster.create( name: "Little boy", movie: not_your_graveyard_movie, img_url:"https://bloody-disgusting.com/wp-content/uploads/2019/06/pet-sematary-night-terrors.png")
zambie_cat = Monster.create( name: "Mean Kitty", movie: not_your_graveyard_movie, img_url:"https://nypost.com/wp-content/uploads/sites/2/2019/04/pet-sematary-cat-2a.jpg?quality=75&strip=all")
lonely_man = Monster.create(name: "Johnny", movie: shutin_movie, img_url: "https://i.ytimg.com/vi/d-ABIIZV3vA/maxresdefault.jpg")


puts "✅ Done seeding!"
