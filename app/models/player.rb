class Player < ApplicationRecord
  has_many :scores
  validates :username, uniqueness: true
end
