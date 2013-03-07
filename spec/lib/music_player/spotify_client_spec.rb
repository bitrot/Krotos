$LOAD_PATH.unshift(File.expand_path('../../lib', __FILE__))

require 'music_player'
require 'music_player/spotify_client'

describe MusicPlayer::SpotifyClient do
  let(:config) { OpenStruct.new( username: ENV['SPOTIFY_USERNAME'],
                                 password: ENV['SPOTIFY_PASSWORD'],
                                 app_key: ENV['SPOTIFY_APP_KEY']) }
  let(:player) { double }
  let(:session) { double(login!: nil) }
  let(:adapter) { double(player: player, session: session) }
  let(:spotify) { MusicPlayer::SpotifyClient.new config, adapter }

  describe '#play' do
    it 'plays a song' do
      song = 'spotify:track:1ZPsdTkzhDeHjA5c2Rnt2I'
      track = double
      adapter.should_receive(:track).with(song).and_return(track)
      player.should_receive(:play!).with(track)

      spotify.play(song)
    end
  end

  describe '#stop' do
    it 'stops the playing song' do
      player.should_receive(:stop)
      spotify.stop
    end
  end

  describe '#pause' do
    it 'toggles the pause state of the current song' do
      player.should_receive(:pause)
      spotify.pause
    end
  end
end
