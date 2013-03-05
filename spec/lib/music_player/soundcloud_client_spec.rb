$LOAD_PATH.unshift(File.expand_path('../../lib', __FILE__))

require 'music_player'
require 'music_player/soundcloud_client'

describe MusicPlayer::SoundCloudClient do
  let(:config) { OpenStruct.new username: ENV['SPOTIFY_USERNAME'], password: ENV['SPOTIFY_PASSWORD'], app_key: ENV['SPOTIFY_APP_KEY'] }

  describe '#play' do
    it 'plays a song' do
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
