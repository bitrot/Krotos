module MusicPlayer
  class MPDPlayer < MusicPlayer::Player

    def initialize(server, port)
      @server = server
      @port   = port
      @mpd = MPD.new server, port
    end

    def connect
      @mpd.connect
    end

    def play(song)
      adapter.play(song)
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
