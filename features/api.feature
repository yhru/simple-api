@dev
Feature: Testing API
    Should be able to submit GET requests to the API.

    Scenario: Get Users
        When I send GET request to /getUsers
        Then I get response code 200

    Scenario Outline: get user
        Given The user with <id> exist
        When I send GET request to /user
        Then I receive
            """
            {
                "id": <res_id>,
                "firstname": <firstname>,
                "lastname": <lastname>,
                "email": <email>
            }
            """
        Examples:
            | id | res_id | firstname | lastname | email                     |
            | 1  | 1      | "Armand"  | "Gentot" | "armand.gentot@gmail.com" |
            | 2  | 2      | "Maxim"   | "Joseau" | "maxim.joseau@gmail.com"  |
            | 3  | 3      | "Romuald" | "Henry"  | "romuald.henry@gmail.com" |
            | 4  | 4      | "Louis"   | "Plancq" | "louis.plancq@gmail.com"  |