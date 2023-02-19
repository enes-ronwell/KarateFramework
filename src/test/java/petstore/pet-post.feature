@smoke
Feature: PetStore post endpoints

  Background:
    Given url baseUrl
    Given path "pet"

  Scenario: Add a new pet to the store
    * def myBody = read('classpath:petstore/data/pet-addNewPet.json')
    Given request myBody
    When method POST
    Then print response
    And status 200
    And match response.id == "#number"
    And match response.name == "#present"