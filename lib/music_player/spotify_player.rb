module MusicPlayer
  class SpotifyPlayer < MusicPlayer::Player
    attr_reader :adapter

    def initialize(username, password, appkey_path)
      @username = server
      @password = port
      @adapter  = Hallon::Session.initialize IO.read(appkey_path)
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

    def next
      adapter.next
    end

    def previous
      adapter.previous
    end

    def pause
      adapter.pause
    end
  end
end
