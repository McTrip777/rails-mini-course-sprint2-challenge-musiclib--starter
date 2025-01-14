class Album < ApplicationRecord
  belongs_to :artist
  has_many :songs

  scope :available, -> () { where(available: true).order(:name) }

  validates :name, presence: true

  def length_seconds
    songs.reduce(0) { |length, song| length + song.length_seconds }
  end

end
