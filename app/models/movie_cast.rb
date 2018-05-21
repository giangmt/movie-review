class MovieCast < ApplicationRecord
  belongs_to :cast
  belongs_to :movie
end
