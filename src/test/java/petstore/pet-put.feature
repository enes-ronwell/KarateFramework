@smoke
Feature: PetStore put endpoints

  Background:
    Given url baseUrl
    Given path "pet"
    * def createPet = call read('classpath:callers/createPet.feature'){name:"kangal"}

  Scenario: Updates a pet in the store with form data
    * def myBody = read('classpath:petstore/data/pet-addNewPet.json')
    When set myBody.id = createPet.response.id
    When set myBody.name = "akbaş"
    Given request myBody
    When method PUT
    Then print response
    And status 200
    And match response.name == "akbaş"


