require 'hallon'
require 'hallon-openal'

module MusicPlayer
  class HallonProxy
    def self.session(appkey_path)
      Hallon::Session.initialize IO.read(appkey_path)
    end

    def self.player
      Hallon::Player.new(Hallon::OpenAL)
    end

    def self.track(song)
      Hallon::Track.new(song).load
    end
  end
end

