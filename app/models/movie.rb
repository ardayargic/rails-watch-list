class Movie < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :review, dependent: :destroy

  validates :title, uniqueness: true, presence: true
end
