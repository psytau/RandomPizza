Feature: suggest a random pizza

  As an adventurous, impatient and indecisive person
  I want a random suggestion
  So that I can order a pizza

  Scenario: start suggester
    Given I have started the app
    Then I should see a suggestion "You should try"

  Scenario: Know if a topping is a valid topping
    Given I have started the app
    And a valid topping, Pineapple.
    Then It should tell me this is a valid topping

  Scenario: Know if a topping is not a valid topping
    Given I have started the app
    And an invalid topping, mice.
    Then It should tell me this is not a valid topping
