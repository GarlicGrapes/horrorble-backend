class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end

  get "/movies" do 
    movies = Movie.all
    movies.to_json
  end

  get "/movies/:id/monsters"
    monsters = Movie.find(params[:id]).monsters
    monsters.to_json
  end

  post "/movies" do
    movie = Movie.create(title: params[:title], release_year: params[:release_year], director_id: params[:director_id])
    movie.to_json
  end

  patch "/movies/:id" do
    movie = Movie.find(params[:id])
    movie.update(
      watched: params[:watched]
    )
    movie.to_json
  end

  delete "/movies/:id" do
    movie = Movie.find(params[:id])
    movie.destroy
  end

  get "/directors" do
    directors = Director.all
    directors.to_json
  end

  post "/directors" do 
    director = Director.create(name: params[:name])
    director.to_json
  end

  # delete "/directors/:id" do
  #   director = Director.find(params[:id])
  #   director.destroy
  # end


end
