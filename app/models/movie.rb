class Movie < ApplicationRecord

  validates :title, :plot, :year, :rating, presence: true
  validates :title, length:{ minimum: 2 } 
  validates :plot, length:{ minimum: 15 } 
  
  has_many :actors

end
