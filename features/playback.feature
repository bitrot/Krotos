Feature: Playing a song
  In order to listen to music
  Users should be able to play a song

  Scenario: Click the play button
    Given I have a song ready to play
    When I click the play button
    Then a song should play
