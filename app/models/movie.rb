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

  default_scope -> {order(created_at: :desc).includes(:movie_images)}

  scope :top_reviewed, -> {joins(:reviews).sort_by(& :count_reviews).uniq.reverse}

  scope :top_rated, -> {joins(:reviews).sort_by(& :count_rating).uniq.reverse}

  scope :years, -> {pluck(:premiere).uniq}

  scope :genre, -> (genre_id) {where(genre_id: genre_id).order(created_at: :desc)}

  scope :premiere, -> (year) {where(premiere: year).order(created_at: :desc)}

  def count_reviews
    reviews.count
  end

  def count_rating
    reviews.average(:rating).to_i
  end
end
