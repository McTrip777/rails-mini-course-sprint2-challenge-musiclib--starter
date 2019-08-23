module Api
    module V1
      class PlaylistsController < ApplicationController
        def index
          @playlist = Playlist.all
  
          render json: @playlist
        end
  
        def show
            @playlist = Playlist.find(params[:id])

            render json: @playlist
        end
        def create
            @playlist = Playlist.new(playlist_params)
            # @playlist.api_key = DEFAULT_API_KEY
    
            if @playlist.save
              render json: @playlist, status: :created, location: api_v1_user_url(@playlist)
            else
              render json: @playlist.errors, status: :unprocessable_entity
            end
        end

        # def format_album_json(playlist)
        #   {
        #     id: playlist.id,
        #     name: playlist.name,
        #     user_id: playlist.user_id,
        #     created_at: playlist.created_at,
        #     updated_at: playlist.updated_at,
        #   }
        # end
        def playlist_params
          params.require(:playlist).permit(:name, :user_id)
        end
      end
    end
  end
  