class Movie < ApplicationRecord
  has_many :bookmarks

  validates :title, presence: true, uniqueness: true
  validates :overview, presence: true
end


# title is unique (FAILED - 16)
# title cannot be blank (FAILED - 17)
# overview cannot be blank (FAILED - 18)
