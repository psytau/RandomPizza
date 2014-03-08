Feature: suggest a random pizza

  As an adventurous, impatient and indecisive person
  I want a random suggestion
  So that I can order a pizza

  Scenario: start suggester
    Given I have started the app
    Then I should see "Hello adventurous person!"
      And I should see a suggestion "You should try"
