$LOAD_PATH.unshift(File.expand_path('../../lib', __FILE__))

require 'music_player'
require 'music_player/mpd_client'
require 'librmpd'
require 'mpdserver'
require 'ostruct'
require 'socket'

MPD_TEST_SERVER_PORT = 7700

describe MusicPlayer::MPDClient do
  let(:config) { OpenStruct.new server: 'localhost', port: MPD_TEST_SERVER_PORT }
  let(:mpd) { MusicPlayer::MPDClient.new config }
  let(:observer) { observer = MPD.new 'localhost', MPD_TEST_SERVER_PORT }
  let(:song) { OpenStruct.new path: 'Shpongle/Are_You_Shpongled/1.Shpongle_Falls.ogg' }
  
  before(:all) do
    @server = MPDTestServer.new MPD_TEST_SERVER_PORT
    @server.start
    observer.connect
  end

  after(:all) do
    @server.stop
  end

  describe '#play' do
    it 'plays a song' do
      mpd.play(song)
      song.path.should eq observer.current_song['file']
    end
  end

  describe '#stop' do
    it 'stops the playing song' do
      mpd.play(song)
      mpd.stop
      observer.stopped?.should eq true
    end
  end

  describe '#pause' do
    it 'toggles the pause state of the current song' do
      mpd.play(song)
      mpd.pause
      observer.paused?.should eq true
      mpd.pause
      observer.paused?.should eq false
    end
  end
end
