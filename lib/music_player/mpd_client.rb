require 'librmpd'

module MusicPlayer
  class MPDClient
    def initialize(config, adapter = MPD)
      @mpd = adapter.new config.server, config.port
    end

    def mpd
      @mpd
    end

    def connect
      mpd.connect
    end

    def play(song)
      mpd.play(song)
    end

    def stop
      mpd.stop
    end

    def next
      mpd.next
    end

    def previous
      mpd.previous
    end

    def pause
      mpd.pause
    end
  end

  def self.client
    @client ||= new(config)
  end
end
