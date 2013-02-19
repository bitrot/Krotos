$LOAD_PATH.unshift(File.expand_path('../../lib', __FILE__))

require 'music_player'

describe MusicPlayer::Player do
  let(:player) { MusicPlayer::Player.new }
  let(:song) { double }
  let(:song2) { double }
  let(:song3) { double }

  describe '#queue=' do
    it 'sets the queue' do
      new_queue = double
      player.queue = new_queue
      player.queue.should eq new_queue
    end

    it 'resets the queue index' do
      player.queue = [song, song2]
      player.current_song = song2
      player.queue_index.should_not eq 0
      player.queue = []
      player.queue_index.should eq 0
    end
  end

  describe '#queue_index' do
    it 'defaults to 0' do
      new_player = MusicPlayer::Player.new
      new_player.queue_index.should eq 0
    end
  end

  describe '#song_index' do
    it 'raises error for invalid song' do
      player.queue = []
      expect { player.song_index(song) }.to raise_error MusicPlayer::SongNotQueuedError
    end
  end

  describe '#current_song' do
    describe 'no enqueued songs' do
      it 'raises an error' do
        player.queue = []
        expect { player.current_song }.to raise_error MusicPlayer::EmptyQueueError
      end
    end

    describe 'enqueued songs' do
      it 'returns the current song' do
        player.queue = [song]
        player.current_song.should eq song
      end
    end
  end

  describe '#current_song=' do
    it 'raises error if current song not set' do
      player.queue= []
      expect { player.current_song = song }.to raise_error MusicPlayer::SongNotQueuedError
    end

    it 'updates the queue index' do
      player.queue = [song, song2]
      player.queue_index.should_not eq 1
      player.current_song = song2
      player.queue_index.should eq 1
    end
  end

  describe 'playback methods' do
    before do
      player.queue = [song, song2, song3]
      player.current_song = song
    end
    describe '#play' do
      describe 'no songs in the queue' do
        it 'does not play anything' do
          player.queue = []
          expect { player.play }.to raise_error MusicPlayer::EmptyQueueError
        end
      end

      describe 'songs in the queue' do
        describe 'no songs played yet' do
          it 'plays the first song in the queue' do
            song.should_receive :play
            player.play
          end
        end

        describe 'some songs have already been played' do
          it 'plays the current song' do
            player.current_song = song2
            song2.should_receive :play
            player.play
          end
        end

        describe 'all the songs have been played' do
          it 'plays the first song in the queue' do
            pending
          end
        end
      end

      describe 'repeat one song is on' do
        pending
      end
    end

    describe '#stop' do
      it 'stops the playing song' do
        song.should_receive(:stop)
        player.stop
      end
    end

    describe '#pause' do
      it 'toggles the pause state of the current song' do
        song.should_receive(:pause)
        player.pause
      end
    end

    describe '#next' do
      it 'goes to the next song in the playlist' do
        player.next
        player.current_song.should eq song2
      end
    end

    describe '#previous' do
      it 'goes to the previous song in the playlist' do
        player.current_song = song2
        player.previous
        player.current_song.should eq song
      end
    end

    describe '#now_playing' do
      pending
    end
  end
end
