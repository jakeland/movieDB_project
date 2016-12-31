json.extract! movie, :id, :title, :description, :movie_length, :director, :movie_rating, :avg_rating, :created_at, :updated_at
json.url movie_url(movie, format: :json)