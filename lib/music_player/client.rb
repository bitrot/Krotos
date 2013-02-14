module MusicPlayer
  class Client
    attr_reader :adapter

    def initialize(new_adapter = MusicPlayer.config.adapter)
      @adapter = new_adapter
    end

    def adapter=(new_adapter)
      @adapter = new_adapter
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
