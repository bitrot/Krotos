$LOAD_PATH.unshift(File.expand_path('../../lib', __FILE__))

require 'music_player'

describe MusicPlayer::Client do
  describe '#play' do
    it 'plays a song' do
      song = 'test song'
      client = double
      client.should_receive(:play).with(song)

      client.play(song)
    end
  end

  describe '#stop' do
    it 'stops the playing song' do
      song = 'test song'
      client = double
      client.should_receive(:stop)

      client.stop
    end
  end

  describe '#pause' do
    it 'toggles the pause state of the current song' do
      song = 'test song'
      client = double
      client.should_receive(:pause)

      client.pause
    end
  end

  describe '#next' do
    it 'goes to the next song in the playlist' do
      song = 'test song'
      client = double
      client.should_receive(:next)

      client.next
    end
  end

  describe '#previous' do
    it 'goes to the previous song in the playlist' do
      song = 'test song'
      client = double
      client.should_receive(:previous)

      client.previous
    end
  end

  describe '#now_playing' do
    pending
  end
end
