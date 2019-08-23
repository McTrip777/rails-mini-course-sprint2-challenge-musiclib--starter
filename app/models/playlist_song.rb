class PlaylistSong < ApplicationRecord
    belongs_to :song
    belongs_to :playlist
  
    # validates :name, presence: true
  end
  