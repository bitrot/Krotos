Feature: Music Player
  So that music can be listened to
  Users must be able to play music

  Scenario: Play music from Spotify
    Given a working music player
    And valid Spotify credentials
    When I setup the player for spotify
    Then I should be able to play music from spotify

  Scenario: Play music from MPD
    Given a working music player
    And valid server credentials
    When I setup the player for MPD
    Then I should be able to play music from MPD
