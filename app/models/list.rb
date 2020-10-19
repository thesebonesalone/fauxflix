class List < ApplicationRecord
  belongs_to :profile
  has_many :list_movies
  has_many :movies, through: :list_movies

end
