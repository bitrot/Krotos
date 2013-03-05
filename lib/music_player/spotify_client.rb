require 'hallon'
require 'hallon-openal'

module MusicPlayer
  class SpotifyClient
    attr_reader :adapter, :player

    def initialize(config = MusicPlayer.config.spotify, adapter = Hallon)
      @adapter = adapter
      # session = adapter::Session.initialize IO.read(config.appkey_path)
      session.login! config.username, config.password
      # @player adapter::Player.new(adapter::OpenAL)
    end

    def play(song)
      track = adapter::Track.new(song).load
      player.play!(track)
    end

    def stop
      player.stop
    end

    def pause
      player.pause
    end
  end
end
