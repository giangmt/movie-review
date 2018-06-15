class Review < ApplicationRecord
  belongs_to :movie
  belongs_to :user
  has_many :interactives, dependent: :destroy

  validates :movie_id, :user_id, presence: true
  validates :movie, uniqueness: {scope: :user}
  validates :content, presence: true, length: {minimum: 300}
  
  default_scope -> {order(created_at: :desc)}

  scope :sort_reviews, -> {sort_by(& :count_inter_review).reverse}

  def count_inter_review
    interactives.count
  end
end
