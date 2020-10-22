class Profile < ApplicationRecord
  has_one :list, dependent: :destroy
  belongs_to :user
  has_many :likes

end
