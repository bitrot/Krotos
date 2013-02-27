require 'music_player/config'
require 'music_player/player'

module MusicPlayer
  def self.play(song)
    player.play(song)
  end

  def self.stop
    player.stop
  end

  def self.pause
    player.pause
  end

  def self.next
    player.next
  end

  def self.previous
    player.previous
  end

  def self.player
    @player ||= MusicPlayer::Player.new
  end

  def self.player=(new_player)
    @player = new_player
  end
end
