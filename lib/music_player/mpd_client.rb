require 'librmpd'

module MusicPlayer
  class MPDClient
    def initialize(config, adapter = MPD)
      @mpd = adapter.new config.server, config.port
      mpd.connect
    end

    def mpd
      @mpd
    end

    def play(song)
      mpd.clear
      mpd.add(song.path)
      mpd.play
    end

    def stop
      mpd.stop
    end

    def pause
      mpd.pause = !mpd.paused?
    end
  end

  def self.client
    @client ||= new(config)
  end
end
