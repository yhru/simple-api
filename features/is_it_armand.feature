Feature: Is it Armand?
  Check if this is the good user

  Scenario Outline: User is or is not Armand
    Given user is "<user>"
    When I ask whether it's Armand
    Then I should be told "<answer>"

  Examples:
    | user           | answer |
    | Armand         | Yes    |
    | Maxim          | No     |
    | Romuald        | No     |
    | Louis          | No     |
    | anything else! | No     |