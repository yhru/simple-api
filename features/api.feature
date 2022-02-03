Feature: Testing API
    Should be able to submit GET and POST requests to the API.

    # Scenario: Get Users
    #     Given A contact <request>
    #     When I send GET request to /getUsers
    #     Then I get response code 200

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

# Examples:
#     | id | response                                                                            |
#     | 1  | {"id":1,"firstname":"Armand","lastname":"Gentot","email":"armand.gentot@gmail.com"} |
#     | 2  | {"id":2,"firstname":"Maxim","lastname":"Joseau","email":"maxim.joseau@gmail.com"}   |
