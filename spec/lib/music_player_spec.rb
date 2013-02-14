$LOAD_PATH.unshift(File.expand_path('../../lib', __FILE__))
puts $LOAD_PATH
require 'music_player'

describe MusicPlayer do
  describe '#play' do
    it 'plays a song' do
      song = 'test song'
      client = double
      client.should_receive(:play).with(song)

      MusicPlayer.client = client
      MusicPlayer.play(song)
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
