class Movie < ApplicationRecord
  has_many :list_movies
  has_many :lists, through: :list_movies
  belongs_to :tag
  has_many :likes

end
