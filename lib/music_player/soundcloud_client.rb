require 'soundcloud'

module MusicPlayer
  class SoundCloudClient
    attr_reader :adapter

    def initialize(config = MusicPlayer.config.soundcloud, adapter = Soundcloud)
      @adapter  = Soundcloud.new({
        client_id:     config.client_id,
        client_secret: config.client_secret,
        username:      config.username,
        password:      config.password,
      })
    end

    def play(song)
      track = adapter.get(song)
      # Second param is allow_redirects
      stream_url = client.get(track.stream_url, false)
      # TODO: Do something with this stream url...
      puts stream_url
    end

    def stop
      adapter.stop
    end

    def pause
      adapter.pause
    end
  end
end
