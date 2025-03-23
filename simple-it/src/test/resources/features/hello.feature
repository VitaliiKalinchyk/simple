Feature: Hello endpoint

  Scenario: Get hello message
    When I send a GET request to "/hello"
    Then the response status should be 200
    And the response body should be "Hello, world!"

  Scenario: Get hello message
    When I send a GET request to "/hell"
    Then the response status should be 404
