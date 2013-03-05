require 'rdio'

module MusicPlayer
  class RdioClient
    attr_reader :adapter

    def initialize(config = MusicPlayer.config.rdio, adapter = Rdio)
      @adapter  = Soundcloud.new({
        comsumer_key:    config.client_id,
        consumer_secret: config.client_secret
      })
    end

    def play(song)
      adapter.play
    end

    def stop
      adapter.stop
    end

    def pause
      adapter.pause
    end
  end
end
