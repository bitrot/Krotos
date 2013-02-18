$LOAD_PATH.unshift(File.expand_path('../../lib', __FILE__))
require 'music_player'

describe MusicPlayer do
  let(:client) { double }

  before do
    MusicPlayer.client = client
  end

  describe '#play' do
    it 'plays a song' do
      song = 'test song'
      client.should_receive(:play).with(song)

      MusicPlayer.play(song)
    end
  end

  describe '#stop' do
    it 'stops the playing song' do
      client.should_receive(:stop)
      MusicPlayer.stop
    end
  end

  describe '#pause' do
    it 'toggles the pause state of the current song' do
      client.should_receive(:pause)
      MusicPlayer.pause
    end
  end

  describe '#next' do
    it 'goes to the next song in the playlist' do
      client.should_receive(:next)
      MusicPlayer.client.next
    end
  end

  describe '#previous' do
    it 'goes to the previous song in the playlist' do
      client.should_receive(:previous)
      MusicPlayer.client.previous
    end
  end

  describe '#config' do
    it 'has a configuration object' do
      MusicPlayer.config.should be_a MusicPlayer::Config
    end
  end

  describe '#setup' do
    before do
      @old_config = MusicPlayer.config
      MusicPlayer.config = MusicPlayer::Config.new
    end
    after do
      MusicPlayer.config = @old_config
    end

    it 'sets config values passed in a block' do
      MusicPlayer.setup do |config|
        config.test_value = 'test_value'
      end

      MusicPlayer.config.test_value.should eq 'test_value'
    end
  end
end
