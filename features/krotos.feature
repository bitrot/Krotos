Feature: Working Ember.js App
  In order to have a working website
  Visitors must see an Ember.js app when visiting the site

  @javascript
  Scenario: Visit the homepage
    Given I visit the homepage
    Then I should see an Ember.js app
