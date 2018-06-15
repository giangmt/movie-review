class Review < ApplicationRecord
  belongs_to :movie
  belongs_to :user

  default_scope -> {order(created_at: :desc)}
  validates :movie_id, :user_id, presence: true
  validates :content, presence: true, length: {minimum: 300}
end
