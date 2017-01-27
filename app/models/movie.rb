class Movie < ApplicationRecord
  validates :title, presence: true
  #validates :tilte, uniqueness: true
  validates :tilte, uniqueness: { scope: :release_date, message: 'shoukd not have two movies with same and release_date' }
  belongs_to :director, class_name:"Director", foreign_key: "director_id"
  has_and_belongs_to_many :actors, associattion_foreign_key: 'actor_id' join_table: 'actors_movies'
end
