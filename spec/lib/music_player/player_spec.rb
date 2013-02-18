$LOAD_PATH.unshift(File.expand_path('../../lib', __FILE__))

require 'music_player'

describe MusicPlayer::Player do
  let(:player) { double }
  describe '#play' do
    it 'plays a song' do
      song = 'test song'
      player.should_receive(:play).with(song)
      player.play(song)
    end
  end

  describe '#stop' do
    it 'stops the playing song' do
      player.should_receive(:stop)
      player.stop
    end
  end

  describe '#pause' do
    it 'toggles the pause state of the current song' do
      player.should_receive(:pause)
      player.pause
    end
  end

  describe '#next' do
    it 'goes to the next song in the playlist' do
      player.should_receive(:next)
      player.next
    end
  end

  describe '#previous' do
    it 'goes to the previous song in the playlist' do
      player.should_receive(:previous)
      player.previous
    end
  end

  describe '#now_playing' do
    pending
  end
end
