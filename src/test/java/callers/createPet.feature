Feature: Create Pet Caller

  Background:
    Given url baseUrl
    Given path "pet"

  Scenario: Add a new pet to the store
    * def myBody = read('classpath:petstore/data/pet-addNewPet.json')
    When set myBody.name = name
    Given request myBody
    When method POST
