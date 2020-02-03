class Movie < ApplicationRecord

  validates :title, :plot, :year, :rating, presence: true
  validates :title, length:{ minimum: 2 } 
  validates :plot, length:{ minimum: 15 } 
  
  has_many :actors
  has_many :movie_genres
  has_many :genres, through: :movie_genres

end
