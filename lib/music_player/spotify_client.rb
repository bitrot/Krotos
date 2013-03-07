require 'music_player/hallon_proxy'

module MusicPlayer
  class SpotifyClient
    attr_reader :adapter, :player

    def initialize(config = MusicPlayer.config.spotify, adapter = HallonProxy)
      @adapter = adapter
      session = adapter.session(config.appkey_path)
      session.login! config.username, config.password
      @player = adapter.player
    end

    def play(song)
      track = adapter.track(song)
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

