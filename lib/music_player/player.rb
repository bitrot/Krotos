module MusicPlayer
  class Player
    attr_reader :config, :now_playing

    def initialize(new_config = MusicPlayer.config)
      @config = new_config
    end

    def queue
      @queue ||= []
    end

    def queue=(new_queue)
      @queue = new_queue
      @queue_index = nil
    end

    def queue_index
      @queue_index ||= 0
    end

    def song_index(song)
      queue.index(song).tap { |i| raise MusicPlayer::SongNotQueuedError if i.nil? }
    end

    def current_song
      @queue.fetch(queue_index) { raise MusicPlayer::EmptyQueueError }
    end

    def current_song=(new_song)
      @queue_index = song_index(new_song)
    end

    def play
      current_song.play
    end

    def stop
      current_song.stop
    end

    def next
      @queue_index += 1
    end

    def previous
      @queue_index -= 1
    end

    def pause
      current_song.pause
    end
  end

  class SongNotQueuedError < StandardError; end
  class EmptyQueueError < StandardError; end
end

