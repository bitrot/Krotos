require 'music_player/config'
require 'music_player/client'

module MusicPlayer
  def self.play(song)
    client.play(song)
  end

  def self.now_playing
    client.now_playing
  end

  def self.client
    @client ||= MusicPlayer::Client.new
  end

  def self.client=(player_client)
    @client = player_client
  end
end
