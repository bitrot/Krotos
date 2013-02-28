module MusicPlayer
  class SpotifyClient
    attr_reader :adapter

    def initialize(adapter = Hallon::Session)
      @adapter  = adapter.initialize IO.read(appkey_path)
    end

    def connect
      adapter.login!(@username, @password)
    end

    def play(song)
      track = Hallon::Track.new(song).load
      adapter.play!(track)
    end

    def stop
      adapter.stop
    end

    def pause
      adapter.pause
    end
  end
end
