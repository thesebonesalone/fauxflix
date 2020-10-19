class ListMovie < ApplicationRecord
  belongs_to :movies
  belongs_to :lists
end
