class Actor < Professional
  has_and_belongs_to_many :movie, associattion_foreign_key: 'movie_id' , join_table: 'actors_movies'
end
