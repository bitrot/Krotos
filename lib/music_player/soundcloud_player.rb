module MusicPlayer
  class SoundCloudPlayer < MusicPlayer::Player
    attr_reader :adapter

    def initialize(username, password, client_id, client_secret)
      @username = server
      @password = port
      @adapter  = Soundcloud.new({
        client_id:     client_id,
        client_secret: client_secret,
        username:      username,
        password:      password,
      })
    end

    def connect
      adapter.login!(@username, @password)
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
