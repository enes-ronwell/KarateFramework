@smoke
Feature: PetStore get endpoints

  Background:
    Given url baseUrl
    Given path "pet"
    * def createPet = call read('classpath:callers/createPet.feature'){name:"kangal"}

  Scenario: Find pet by ID
    Given path createPet.response.id
    When method GET
    Then print response
    And status 200
    And match response.id == "#number"
    And match response.name == "kangal"
    And match response.category  == { id:0,name:"köpek"}