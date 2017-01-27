class Movie < ApplicationRecord
  validates :title, presence: true
  #validates :tilte, uniqueness: true
  validates :tilte, uniqueness: { scope: :release_date, message: 'shoukd not have two movies with same and release_date' }
end
