class Director < Professional
  has_many :movie, class_name: 'Movie', foreign_key: 'director_id'
end
