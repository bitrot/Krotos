$LOAD_PATH.unshift(File.expand_path('../../lib', __FILE__))

require 'music_player'
require 'music_player/spotify_client'

describe MusicPlayer::SpotifyClient do
  let(:config) { OpenStruct.new username: ENV['SPOTIFY_USERNAME'], password: ENV['SPOTIFY_PASSWORD'], app_key: ENV['SPOTIFY_APP_KEY'] }
  let(:adapter) { double }
  # let(:spotify) { MusicPlayer::SpotifyClient.new config, adapter }

  # before do
  #   adapter::Session.stub(:initialize)
  #   adapter::OpenAL
  #   adapter::Player.stub(:new)
  # end

  describe '#play' do
    it 'plays a song' do
      # song = 'spotify:track:1ZPsdTkzhDeHjA5c2Rnt2I'
      # adapter.should_receive(:play).with(song)
      pending
    end
  end

  describe '#stop' do
    it 'stops the playing song' do
      pending
    end
  end

  describe '#pause' do
    it 'toggles the pause state of the current song' do
      pending
    end
  end
end
