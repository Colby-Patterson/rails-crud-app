class Song < ApplicationRecord
  validates :song_name, presence: true
  validates :artist, presence: true
end
