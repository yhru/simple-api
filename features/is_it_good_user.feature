Feature: Is is good user?
  Check if this is the good user

  Scenario: User is the good User
    Given user is Armand
    When I ask whether it's Louis 
    Then I should be told "Nope"