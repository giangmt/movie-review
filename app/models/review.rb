class Review < ApplicationRecord
  belongs_to :movie
  belongs_to :user

  validates :movie_id, :user_id, presence: true
  validates :movie, uniqueness: {scope: :user}
  validates :content, presence: true, length: {minimum: 300}
  
  default_scope -> {order(created_at: :desc)}
end
