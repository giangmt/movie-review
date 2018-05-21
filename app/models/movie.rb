class Movie < ApplicationRecord
  belongs_to :genre
  belongs_to :director
  has_many :movie_casts
  has_many :casts, through: :movie_casts
  has_many :movie_images
  has_many :interactives
  has_many :comments
  has_many :reviews
end
