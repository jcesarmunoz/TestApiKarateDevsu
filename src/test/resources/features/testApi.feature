Feature: Test API

  Background:
    * url 'http://api.demoblaze.com'
    * def randomUser = karate.callSingle('classpath:features/randomNumber.feature').userID

  Scenario: create user in demoBlazer
    Given path "/signup"
    And request {"username": '#(randomUser)',"password": 1234567890}
    When method post
    Then status 200
    And match response contains ''

  Scenario: create an existing user
    Given path "/signup"
    And request {"username": "#(randomUser)","password": "1234567890"}
    When method post
    Then status 200
    And match response == {"errorMessage":"This user already exist." }

  Scenario: create user in demoBlazer
    Given path "/login"
    And request {"username": "archer123","password": "1234567890"}
    When method post
    Then status 200
    And match response contains 'Auth_token'

  Scenario: user and password incorrect in Login
    Given path "/login"
    And request {"username": "archer1","password": "12345678"}
    When method post
    Then status 200
    And match response == {"errorMessage":"Wrong password." }
