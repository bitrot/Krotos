$LOAD_PATH.unshift(File.expand_path('../../lib', __FILE__))

require 'music_player'
require 'music_player/mpd_client'
require 'librmpd'

describe MusicPlayer::MPDClient do
  describe '#initialize' do
    it 'initializes an MPD object with a server and port' do
      mpd = MusicPlayer::MPDClient.new 'localhost', 6600
    end
  end

  describe '#play' do
    it 'plays a song' do
      mpd = MusicPlayer::MPDClient.new 'localhost', 6600
      pending
      # song = 'test song'
      # client = double
      # client.should_receive(:play).with(song)

      # client.play(song)
    end
  end

  describe '#stop' do
    it 'stops the playing song' do
      pending
      # song = 'test song'
      # client = double
      # client.should_receive(:stop)

      # client.stop
    end
  end

  describe '#pause' do
    it 'toggles the pause state of the current song' do
      pending
      # song = 'test song'
      # client = double
      # client.should_receive(:pause)

      # client.pause
    end
  end

  describe '#next' do
    it 'goes to the next song in the playlist' do
      pending
      # song = 'test song'
      # client = double
      # client.should_receive(:next)

      # client.next
    end
  end

  describe '#previous' do
    it 'goes to the previous song in the playlist' do
      pending
      # song = 'test song'
      # client = double
      # client.should_receive(:previous)

      # client.previous
    end
  end

  describe '#now_playing' do
    pending
  end
end
