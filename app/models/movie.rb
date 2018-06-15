class Movie < ApplicationRecord
  belongs_to :genre
  belongs_to :director
  has_many :movie_casts
  has_many :casts, through: :movie_casts
  has_many :movie_images, dependent: :destroy
  has_many :interactives
  has_many :comments
  has_many :reviews, dependent: :destroy

  validates :name, presence: true, uniqueness: true

  default_scope -> {order :premiere}	

  scope :years, -> {pluck(:premiere).uniq}

  scope :genre, -> (genre_id) {where(genre_id: genre_id).order(created_at: :desc)}

  scope :premiere, -> (year) {where(premiere: year).order(created_at: :desc)}

  def count_reviews
    reviews.count
  end
end
